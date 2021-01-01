#include lumi:shaders/pipeline/post/common.glsl

/*******************************************************
 *  lumi:shaders/pipeline/post/simple.vert             *
 *******************************************************/
 
attribute vec2 in_uv;
void main()
{
    vec4 screen = gl_ProjectionMatrix * vec4(gl_Vertex.xy * u_size, 0.0, 1.0);
    gl_Position = vec4(screen.xy, 0.2, 1.0);
    v_texcoord = in_uv;
}