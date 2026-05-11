.class public Le/b/a/a/o/g/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/g/b/d$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[F

.field public k:[F

.field public l:F


# direct methods
.method public constructor <init>(Le/b/a/a/o/g/b/d$b;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Le/b/a/a/o/g/b/d;->j:[F

    sget-object v1, Le/b/a/a/o/g/b/d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const v6, 0x8d65

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iput v6, p0, Le/b/a/a/o/g/b/d;->i:I

    const-string v1, "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v6, p0, Le/b/a/a/o/g/b/d;->i:I

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

    goto :goto_0

    :cond_2
    iput v6, p0, Le/b/a/a/o/g/b/d;->i:I

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_0

    :cond_3
    const/16 v1, 0xde1

    iput v1, p0, Le/b/a/a/o/g/b/d;->i:I

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_0
    const-string v6, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v6, v1}, Le/b/a/a/o/g/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le/b/a/a/o/g/b/d;->a:I

    if-eqz v1, :cond_5

    const-string v1, "Created program "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Le/b/a/a/o/g/b/d;->a:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Grafika"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "aPosition"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->g:I

    invoke-static {p1, v6}, Le/b/a/a/o/g/b/c;->c(ILjava/lang/String;)V

    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "aTextureCoord"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->h:I

    invoke-static {p1, v6}, Le/b/a/a/o/g/b/c;->c(ILjava/lang/String;)V

    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "uMVPMatrix"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->b:I

    invoke-static {p1, v6}, Le/b/a/a/o/g/b/c;->c(ILjava/lang/String;)V

    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "uTexMatrix"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->c:I

    invoke-static {p1, v6}, Le/b/a/a/o/g/b/c;->c(ILjava/lang/String;)V

    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "uKernel"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->d:I

    if-gez p1, :cond_4

    const/4 p1, -0x1

    iput p1, p0, Le/b/a/a/o/g/b/d;->d:I

    iput p1, p0, Le/b/a/a/o/g/b/d;->e:I

    iput p1, p0, Le/b/a/a/o/g/b/d;->f:I

    goto :goto_1

    :cond_4
    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "uTexOffset"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->e:I

    invoke-static {p1, v6}, Le/b/a/a/o/g/b/c;->c(ILjava/lang/String;)V

    iget p1, p0, Le/b/a/a/o/g/b/d;->a:I

    const-string v6, "uColorAdjust"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/b/a/a/o/g/b/d;->f:I

    invoke-static {p1, v6}, Le/b/a/a/o/g/b/c;->c(ILjava/lang/String;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    .line 1
    iget-object v6, p0, Le/b/a/a/o/g/b/d;->j:[F

    const/4 v7, 0x0

    invoke-static {p1, v7, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    iput p1, p0, Le/b/a/a/o/g/b/d;->l:F

    const/16 v6, 0x100

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v6

    const/16 v6, 0x12

    new-array v6, v6, [F

    neg-float v9, v8

    aput v9, v6, v7

    aput v9, v6, v5

    aput p1, v6, v4

    aput v9, v6, v3

    aput v8, v6, v2

    const/4 v2, 0x5

    aput v9, v6, v2

    const/4 v2, 0x6

    aput v9, v6, v2

    const/4 v2, 0x7

    aput p1, v6, v2

    const/16 v2, 0x8

    aput p1, v6, v2

    aput p1, v6, v0

    const/16 v0, 0xa

    aput v8, v6, v0

    const/16 v0, 0xb

    aput p1, v6, v0

    const/16 v0, 0xc

    aput v9, v6, v0

    const/16 v0, 0xd

    aput v8, v6, v0

    const/16 v0, 0xe

    aput p1, v6, v0

    const/16 p1, 0xf

    aput v8, v6, p1

    const/16 p1, 0x10

    aput v8, v6, p1

    const/16 p1, 0x11

    aput v8, v6, p1

    .line 2
    iput-object v6, p0, Le/b/a/a/o/g/b/d;->k:[F

    .line 3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "monitor program create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
