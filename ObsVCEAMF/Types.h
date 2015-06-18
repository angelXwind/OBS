#pragma once

#include <amf\core\Surface.h>
#include <../libmfx/include/msdk/include/mfxstructures.h>

//TODO reduce
typedef struct InputBuffer
{
	void *pBuffer;
	amf::AMF_MEMORY_TYPE mem_type;

	LONG locked; //< buffer is sent to encoder, no touching
	LONG inUse; //< buffer was allocated and in use by OBS, but may touch, maybe
	uint64_t timestamp;
	mfxFrameData *frameData; //< For updating DX11 texture remapped pointers

	uint8_t *yuv_host_ptr[2];
	cl_mem yuv_surfaces[2];
	size_t yuv_row_pitches[2];
	size_t uv_width;
	size_t uv_height;

} InputBuffer;

typedef struct OutputBuffer
{
	void *pBuffer;
	size_t size;
	uint64_t timestamp;
} OutputBuffer;

typedef struct OutputList
{
	List<BYTE> pBuffer;
	DWORD timestamp;
	PacketType type;
} OutputList;

class Observer : public amf::AMFSurfaceObserver
{
public:
	/**
	********************************************************************************
	* @brief ReleaseResources is called before internal release resources.
	* The callback is called once, automatically removed after call.
	* those are done in specific Surface ReleasePlanes
	********************************************************************************
	*/
	virtual void AMF_STD_CALL OnSurfaceDataRelease(amf::AMFSurface* pSurface)
	{
		InputBuffer *inBuf = nullptr;
		if(pSurface->GetProperty(L"InputBuffer", (amf_int64*)&inBuf) == AMF_OK)
			_InterlockedCompareExchange(&(inBuf->locked), 0, 1);
		else
			OSDebugOut(TEXT("Failed to get buffer property\n"));
		//OSDebugOut(TEXT("Release buffer %p\n"), inBuf);
		//InterlockedDecrement(&refCount);
	}

	Observer() : refCount(0) {}
	virtual ~Observer() {}

	Observer *IncRef()
	{
		InterlockedIncrement(&refCount);
		return this;
	}

	bool Unused()
	{
		return refCount == 0;
	}
private:
	LONG refCount;
};