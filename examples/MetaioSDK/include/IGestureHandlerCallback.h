// Copyright 2007-2014 metaio GmbH. All rights reserved.
// This file is part of Metaio SDK 6.0 beta
#ifndef __AS_IGESTUREHANDLERCALLBACK_H_INCLUDED__
#define __AS_IGESTUREHANDLERCALLBACK_H_INCLUDED__

#include "IMetaioSDK.h"

namespace metaio
{

enum EGESTURE_STATE
{
	EGE_TRANSLATING_START,
	EGE_TRANSLATING_END,
	EGE_ON_TRANSLATED,
		
	EGE_SCALING_START,
	EGE_SCALING_END,
	EGE_ON_SCALED,

	EGE_ROTATING_START,
	EGE_ROTATING_END,
	EGE_ON_ROTATED,
		
	EGE_NONE
};

enum ETOUCH_STATE
{
	ETS_TOUCH_DOWN,
	ETS_TOUCH_UP
};
	
	
/** Interface for handling gesturehandler callbacks
	*/
class IGestureHandlerCallback
{
public:
	virtual ~IGestureHandlerCallback(){};
		
		
	/** Informs the callback about a gesture that is happening
		* \param gesture_state the gesture state
		* \param geometries involved geometries
		* \param groupID the groupID of the geometries
		*/
	virtual void onGestureEvent(EGESTURE_STATE gesture_state, const stlcompat::Vector<metaio::IGeometry*>& geometries, int groupID) = 0;
		
	/** Informs the callback that a geometry has been picked
		* \param state picked on touch down or touch up
		* \param geometry the geometry that has been picked
		*/
	virtual void onGeometryPicked(ETOUCH_STATE state, metaio::IGeometry* geometry) = 0;
};

} // namespace metaio

#endif // __AS_IGESTUREHANDLERCALLBACK_H_INCLUDED__
