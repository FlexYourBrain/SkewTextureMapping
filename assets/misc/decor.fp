#version 140

uniform sampler2D tex0;
uniform fs_uniforms
{
    vec4 tint;
};

in vec2 var_texcoord0;
out vec4 color_out;
void main()
{
    float scale = 3.;
    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    color_out = texture(tex0, (var_texcoord0.xy * scale)) * tint_pm;
}
