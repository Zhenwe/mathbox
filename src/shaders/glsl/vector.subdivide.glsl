uniform float subdivideStride;

// External
vec4 sampleData(vec2 xy);

vec4 lerpXData(vec2 xy) {
  float x = xy.x * subdivideStride;
  float f = fract(x);
  float i = x - f;

  vec2 xy1 = vec2(i, xy.y);
  vec2 xy2 = vec2(i + 1.0, xy.y);
  
  vec4 a = sampleData(uv1);
  vec4 b = sampleData(uv2);

  return mix(a, b, f);
}
