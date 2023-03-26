uniform mat4 projectionMatrix; // projection matrixは、カメラの視野角、アスペクト比、クリッピング面を表す行列
uniform mat4 viewMatrix; // view matrixは、カメラの位置、回転、スケールを表す行列
uniform mat4 modelMatrix; // model matrixは、モデルの位置、回転、スケールを表す行列

attribute vec3 position;

void main() {
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}
