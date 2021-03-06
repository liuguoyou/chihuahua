// Copyright (C) 2002-2012 Nikolaus Gebhardt
// This file is part of the "Irrlicht Engine".
// For conditions of distribution and use, see copyright notice in irrlicht.h

#ifndef __C_Z_BUFFER_H_INCLUDED__
#define __C_Z_BUFFER_H_INCLUDED__

#include "IZBuffer.h"

namespace ue
{
namespace video
{

	class CZBuffer : public IZBuffer
	{
	public:

		//! constructor
		CZBuffer(const core::dimension2d<u32>& size);

		//! destructor
		virtual ~CZBuffer();

		//! clears the zbuffer
		virtual void clear() _IRR_OVERRIDE_;

		//! sets the new size of the zbuffer
		virtual void setSize(const core::dimension2d<u32>& size) _IRR_OVERRIDE_;

		//! returns the size of the zbuffer
		virtual const core::dimension2d<u32>& getSize() const _IRR_OVERRIDE_;

		//! locks the zbuffer
		virtual TZBufferType* lock() _IRR_OVERRIDE_;

		//! unlocks the zbuffer
		virtual void unlock() _IRR_OVERRIDE_;

	private:

		TZBufferType* Buffer;
		TZBufferType* BufferEnd;
		core::dimension2d<u32> Size;
		s32 TotalSize;
	};

} // end namespace video
} // end namespace ue

#endif

