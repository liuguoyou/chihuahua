LOCAL_PATH := $(call my-dir)/../..
IRRLICHT_LIB_PATH := $(LOCAL_PATH)/../../lib/Android
ASSIMP_PATH := ../assimp/
XEffects_PATH := ../XEffects/

include $(CLEAR_VARS)

LOCAL_MODULE := uEngine

# LOCAL_CFLAGS := -D_IRR_ANDROID_PLATFORM_ -Wall -pipe -fno-exceptions -fno-rtti -fstrict-aliasing
LOCAL_CFLAGS := -D_IRR_ANDROID_PLATFORM_ -Wall -pipe -fno-rtti -fstrict-aliasing

# uncomment the next line to make DEBUG libarry
#define NDEBUG

ifndef NDEBUG
LOCAL_CFLAGS += -g -D_DEBUG
else
LOCAL_CFLAGS += -fexpensive-optimizations -O3
endif

LOCAL_C_INCLUDES := ../../../include \
                    ../../assimp/include \
                    ../../assimp/code/BoostWorkaround

LOCAL_SRC_FILES := \
                    Android/CIrrDeviceAndroid.cpp \
                    Android/CAndroidAssetReader.cpp \
                    Android/CAndroidAssetFileArchive.cpp \
                    Android/CKeyEventWrapper.cpp \
                    aesGladman/aescrypt.cpp \
                    aesGladman/aeskey.cpp \
                    aesGladman/aestab.cpp \
                    aesGladman/fileenc.cpp \
                    aesGladman/hmac.cpp \
                    aesGladman/prng.cpp \
                    aesGladman/pwd2key.cpp \
                    aesGladman/sha1.cpp \
                    aesGladman/sha2.cpp \
                    $(XEffects_PATH)/CShaderPre.cpp \
                    $(XEffects_PATH)/EffectHandler.cpp \
                    $(XEffects_PATH)/EffectShaders.cpp \
                    $(ASSIMP_PATH)/code/Assimp.cpp \
                    $(ASSIMP_PATH)/code/BaseImporter.cpp \
                    $(ASSIMP_PATH)/code/ColladaLoader.cpp \
                    $(ASSIMP_PATH)/code/ColladaParser.cpp \
                    $(ASSIMP_PATH)/code/DXFLoader.cpp \
                    $(ASSIMP_PATH)/code/PlyParser.cpp \
                    $(ASSIMP_PATH)/code/PlyLoader.cpp \
                    $(ASSIMP_PATH)/code/BaseProcess.cpp \
                    $(ASSIMP_PATH)/code/FBXAnimation.cpp \
                    $(ASSIMP_PATH)/code/FBXBinaryTokenizer.cpp \
                    $(ASSIMP_PATH)/code/FBXConverter.cpp \
                    $(ASSIMP_PATH)/code/FBXDeformer.cpp \
                    $(ASSIMP_PATH)/code/FBXDocument.cpp \
                    $(ASSIMP_PATH)/code/FBXDocumentUtil.cpp \
                    $(ASSIMP_PATH)/code/FBXImporter.cpp \
                    $(ASSIMP_PATH)/code/FBXMaterial.cpp \
                    $(ASSIMP_PATH)/code/FBXMeshGeometry.cpp \
                    $(ASSIMP_PATH)/code/FBXModel.cpp \
                    $(ASSIMP_PATH)/code/FBXNodeAttribute.cpp \
                    $(ASSIMP_PATH)/code/FBXParser.cpp \
                    $(ASSIMP_PATH)/code/FBXProperties.cpp \
                    $(ASSIMP_PATH)/code/FBXTokenizer.cpp \
                    $(ASSIMP_PATH)/code/FBXUtil.cpp \
                    $(ASSIMP_PATH)/code/ConvertToLHProcess.cpp \
                    $(ASSIMP_PATH)/code/DefaultIOStream.cpp \
                    $(ASSIMP_PATH)/code/DefaultIOSystem.cpp \
                    $(ASSIMP_PATH)/code/DefaultLogger.cpp \
                    $(ASSIMP_PATH)/code/GenVertexNormalsProcess.cpp \
                    $(ASSIMP_PATH)/code/Importer.cpp \
                    $(ASSIMP_PATH)/code/ImporterRegistry.cpp \
                    $(ASSIMP_PATH)/code/MaterialSystem.cpp \
                    $(ASSIMP_PATH)/code/PostStepRegistry.cpp \
                    $(ASSIMP_PATH)/code/ProcessHelper.cpp \
                    $(ASSIMP_PATH)/code/ScenePreprocessor.cpp \
                    $(ASSIMP_PATH)/code/SGSpatialSort.cpp \
                    $(ASSIMP_PATH)/code/SkeletonMeshBuilder.cpp \
                    $(ASSIMP_PATH)/code/SpatialSort.cpp \
                    $(ASSIMP_PATH)/code/TriangulateProcess.cpp \
                    $(ASSIMP_PATH)/code/ValidateDataStructure.cpp \
                    $(ASSIMP_PATH)/code/Version.cpp \
                    $(ASSIMP_PATH)/code/VertexTriangleAdjacency.cpp \
                    $(ASSIMP_PATH)/code/ObjFileImporter.cpp \
                    $(ASSIMP_PATH)/code/ObjFileMtlImporter.cpp \
                    $(ASSIMP_PATH)/code/ObjFileParser.cpp \
                    $(ASSIMP_PATH)/contrib/ConvertUTF/ConvertUTF.c \
                    C3DSMeshFileLoader.cpp \
                    CAnimatedMeshHalfLife.cpp \
                    CAnimatedMeshMD2.cpp \
                    CAnimatedMeshMD3.cpp \
                    CAnimatedMeshSceneNode.cpp \
                    CAttributes.cpp \
                    CB3DMeshFileLoader.cpp \
                    CBillboardSceneNode.cpp \
                    CBoneSceneNode.cpp \
                    CBSPMeshFileLoader.cpp \
                    CCameraSceneNode.cpp \
                    CColladaFileLoader.cpp \
                    CColladaMeshWriter.cpp \
                    CColorConverter.cpp \
                    CCSMLoader.cpp \
                    CCubeSceneNode.cpp \
                    CDefaultSceneNodeAnimatorFactory.cpp \
                    CDefaultSceneNodeFactory.cpp \
                    CDepthBuffer.cpp \
                    CDMFLoader.cpp \
                    CDummyTransformationSceneNode.cpp \
                    CEmptySceneNode.cpp \
                    CFileList.cpp \
                    CFileSystem.cpp \
                    CFPSCounter.cpp \
                    leakHunter.cpp \
                    CGeometryCreator.cpp \
                    CImage.cpp \
                    CImageLoaderBMP.cpp \
                    CImageLoaderDDS.cpp \
                    CImageLoaderJPG.cpp \
                    CImageLoaderPCX.cpp \
                    CImageLoaderPNG.cpp \
                    CImageLoaderPPM.cpp \
                    CImageLoaderPSD.cpp \
                    CImageLoaderRGB.cpp \
                    CImageLoaderTGA.cpp \
                    CImageLoaderWAL.cpp \
                    CImageWriterBMP.cpp \
                    CImageWriterJPG.cpp \
                    CImageWriterPCX.cpp \
                    CImageWriterPNG.cpp \
                    CImageWriterPPM.cpp \
                    CImageWriterPSD.cpp \
                    CImageWriterTGA.cpp \
                    CImageLoaderPVR.cpp \
                    CIrrDeviceConsole.cpp \
                    CIrrDeviceFB.cpp \
                    CIrrDeviceLinux.cpp \
                    CIrrDeviceSDL.cpp \
                    CIrrDeviceStub.cpp \
                    CIrrDeviceWin32.cpp \
                    CIrrDeviceWinCE.cpp \
                    CLightSceneNode.cpp \
                    CLimitReadFile.cpp \
                    CLMTSMeshFileLoader.cpp \
                    CLogger.cpp \
                    CLWOMeshFileLoader.cpp \
                    CMD2MeshFileLoader.cpp \
                    CMD3MeshFileLoader.cpp \
                    CMemoryFile.cpp \
                    CMeshCache.cpp \
                    CMeshManipulator.cpp \
                    CMeshSceneNode.cpp \
                    CMeshTextureLoader.cpp \
                    CMetaTriangleSelector.cpp \
                    CMountPointReader.cpp \
                    CNullDriver.cpp \
                    COctreeSceneNode.cpp \
                    COctreeTriangleSelector.cpp \
                    CEGLManager.cpp \
                    COGLES2Driver.cpp \
                    COGLES2ExtensionHandler.cpp \
                    COGLES2MaterialRenderer.cpp \
                    COGLES2FixedPipelineRenderer.cpp \
                    COGLES2NormalMapRenderer.cpp \
                    COGLES2ParallaxMapRenderer.cpp \
                    COGLES2Renderer2D.cpp \
                    COGLES2Texture.cpp \
                    COSOperator.cpp \
                    CParticleAnimatedMeshSceneNodeEmitter.cpp \
                    CParticleAttractionAffector.cpp \
                    CParticleBoxEmitter.cpp \
                    CParticleCylinderEmitter.cpp \
                    CParticleFadeOutAffector.cpp \
                    CParticleGravityAffector.cpp \
                    CParticleMeshEmitter.cpp \
                    CParticlePointEmitter.cpp \
                    CParticleRingEmitter.cpp \
                    CParticleRotationAffector.cpp \
                    CParticleScaleAffector.cpp \
                    CParticleSphereEmitter.cpp \
                    CParticleSystemSceneNode.cpp \
                    CPLYMeshFileLoader.cpp \
                    CPLYMeshWriter.cpp \
                    CProfiler.cpp \
                    CReadFile.cpp \
                    CSceneCollisionManager.cpp \
                    CSceneLoaderIrr.cpp \
                    CSceneManager.cpp \
                    CSceneNodeAnimatorCameraFPS.cpp \
                    CSceneNodeAnimatorCameraMaya.cpp \
                    CSceneNodeAnimatorCollisionResponse.cpp \
                    CSceneNodeAnimatorDelete.cpp \
                    CSceneNodeAnimatorFlyCircle.cpp \
                    CSceneNodeAnimatorFlyStraight.cpp \
                    CSceneNodeAnimatorFollowSpline.cpp \
                    CSceneNodeAnimatorRotation.cpp \
                    CSceneNodeAnimatorTexture.cpp \
                    CShadowVolumeSceneNode.cpp \
                    CSkinnedMesh.cpp \
                    CSkyBoxSceneNode.cpp \
                    CSkyDomeSceneNode.cpp \
                    CSMFMeshFileLoader.cpp \
                    CSphereSceneNode.cpp \
                    CSTLMeshFileLoader.cpp \
                    CSTLMeshWriter.cpp \
                    CTarReader.cpp \
                    CTerrainSceneNode.cpp \
                    CTerrainTriangleSelector.cpp \
                    CTextSceneNode.cpp \
                    CTriangleBBSelector.cpp \
                    CTriangleSelector.cpp \
                    CVideoModeList.cpp \
                    CVolumeLightSceneNode.cpp \
                    CWADReader.cpp \
                    CWaterSurfaceSceneNode.cpp \
                    CWriteFile.cpp \
                    CXMeshFileLoader.cpp \
                    CXMLReader.cpp \
                    CXMLWriter.cpp \
                    CZBuffer.cpp \
                    CZipReader.cpp \
                    Irrlicht.cpp \
                    irrXML.cpp \
                    os.cpp   \
                    jpeglib/jdphuff.c \
                    jpeglib/jcphuff.c \
                    jpeglib/jcapimin.c \
                    jpeglib/jidctred.c \
                    jpeglib/jcapistd.c \
                    jpeglib/jccoefct.c \
                    jpeglib/jccolor.c \
                    jpeglib/jcdctmgr.c \
                    jpeglib/jchuff.c \
                    jpeglib/jcinit.c \
                    jpeglib/jcmainct.c \
                    jpeglib/jcmarker.c \
                    jpeglib/jcmaster.c \
                    jpeglib/jcomapi.c \
                    jpeglib/jcparam.c \
                    jpeglib/jcprepct.c \
                    jpeglib/jcsample.c \
                    jpeglib/jctrans.c \
                    jpeglib/jdapimin.c \
                    jpeglib/jdapistd.c \
                    jpeglib/jdatadst.c \
                    jpeglib/jdatasrc.c \
                    jpeglib/jdcoefct.c \
                    jpeglib/jdcolor.c \
                    jpeglib/jddctmgr.c \
                    jpeglib/jdhuff.c \
                    jpeglib/jdinput.c \
                    jpeglib/jdmainct.c \
                    jpeglib/jdmarker.c \
                    jpeglib/jdmaster.c \
                    jpeglib/jdmerge.c \
                    jpeglib/jdpostct.c \
                    jpeglib/jdsample.c \
                    jpeglib/jdtrans.c \
                    jpeglib/jerror.c \
                    jpeglib/jfdctflt.c \
                    jpeglib/jfdctfst.c \
                    jpeglib/jfdctint.c \
                    jpeglib/jidctflt.c \
                    jpeglib/jidctfst.c \
                    jpeglib/jidctint.c \
                    jpeglib/jmemmgr.c \
                    jpeglib/jmemnobs.c \
                    jpeglib/jquant1.c \
                    jpeglib/jquant2.c \
                    jpeglib/jutils.c \
                    libpng/png.c \
                    libpng/pngerror.c \
                    libpng/pngget.c \
                    libpng/pngmem.c \
                    libpng/pngpread.c \
                    libpng/pngread.c \
                    libpng/pngrio.c \
                    libpng/pngrtran.c \
                    libpng/pngrutil.c \
                    libpng/pngset.c \
                    libpng/pngtrans.c \
                    libpng/pngwio.c \
                    libpng/pngwrite.c \
                    libpng/pngwtran.c \
                    libpng/pngwutil.c

LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_STATIC_LIBRARY)

$(call import-module,android/native_app_glue)


