// The water's shores (water.glsl), for the vertex shader: this vertex's
// brightness in the slot of its corner of the face, 0 in the others (lights),
// and 1 there (weights) - quads' vertices come in fours, in order. The
// fragment shader's waterShore() compares them.
void waterCorner(int vertex, vec3 color, out vec4 lights, out vec4 weights) {
    weights = vec4(equal(ivec4(vertex & 3), ivec4(0, 1, 2, 3)));
    lights = weights * max(color.r, max(color.g, color.b));
}

