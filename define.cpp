#include "config.h"
#include "AL/al.h"
#include "AL/alc.h"

#include "alc/context.h"
#include "alstring.h"

ALboolean AL_APIENTRY alIsExtensionPresentDirect(ALCcontext *context, const ALchar *extName);
ALvoid* AL_APIENTRY alGetProcAddressDirect(ALCcontext*, const ALchar *funcName);
ALenum AL_APIENTRY alGetEnumValueDirect(ALCcontext*, const ALchar *enumName);
AL_API ALvoid* AL_APIENTRY alGetProcAddress(const ALchar *funcName);
AL_API ALenum AL_APIENTRY alGetEnumValue(const ALchar *enumName);
