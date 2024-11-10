precision mediump float;

uniform sampler2D rdGaugeTexture;
uniform float rdTime;

// rdValues:
// x = rdGaugeTexture is set
// y = gauge attached value
// z = RPM
// w = vehicle speed
uniform vec4 rdValues;
uniform vec4 rdBackgroundColor;
uniform vec4 rdBlendColor;

varying vec2 rdGaugeTexCoord;

// rdGaugeNormalizedArea: rendering area in normalized -1.0 to 1.0 coordinates.
varying vec2 rdGaugeNormalizedArea;

void main()
{
    gl_FragColor = texture2D(rdGaugeTexture, rdGaugeTexCoord) * rdBlendColor;
}