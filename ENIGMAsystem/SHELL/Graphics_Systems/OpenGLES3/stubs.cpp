#include <cstring>

namespace enigma {

unsigned char* graphics_copy_texture_pixels(int texture, unsigned* fullwidth, unsigned* fullheight) {
  unsigned char* ret = new unsigned char[((*fullwidth)*(*fullheight)*4)];
  std::memset(ret, 0, ((*fullwidth)*(*fullheight)*4));
  return ret;
}

}
