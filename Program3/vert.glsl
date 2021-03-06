attribute vec4 aPos;
attribute vec3 aNor;
uniform mat4 P;
uniform mat4 M;
uniform mat4 V;
varying vec3 vCol;
uniform vec3 uLightPos;

varying vec3 interpolatedNormal;
varying vec3 interpolatedPos;

//vec3 updated_aNor = (V * M * vec4(aNor, 0.0)).xyz;

void main()
{
	gl_Position = P * V * M * aPos;
	//vCol = 0.5*(aNor + 1.0);

   interpolatedPos = gl_Position.xyz;
   interpolatedNormal = aNor;
}
