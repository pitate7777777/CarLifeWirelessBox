.class public final Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/b/a/a/o/g/b/b;

.field public c:Le/b/a/a/o/g/a;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final a(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "gl"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-boolean v0, v2, Le/b/a/a/o/g/a;->e:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, v2, Le/b/a/a/o/g/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v2, Le/b/a/a/o/g/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, v2, Le/b/a/a/o/g/a;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, v2, Le/b/a/a/o/g/a;->f:Landroid/graphics/SurfaceTexture;

    iget-object v3, v2, Le/b/a/a/o/g/a;->g:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RenderableTexture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " updateTexImage exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CarLife_SDK"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, v1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->b:Le/b/a/a/o/g/b/b;

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 3
    :cond_2
    iget v3, v2, Le/b/a/a/o/g/a;->a:I

    .line 4
    iget-object v2, v2, Le/b/a/a/o/g/a;->g:[F

    .line 5
    iget-object v4, v0, Le/b/a/a/o/g/b/b;->b:Le/b/a/a/o/g/b/d;

    sget-object v5, Le/b/a/a/o/g/b/c;->a:[F

    iget-object v0, v0, Le/b/a/a/o/g/b/b;->a:Le/b/a/a/o/g/b/a;

    .line 6
    iget-object v11, v0, Le/b/a/a/o/g/b/a;->a:Ljava/nio/FloatBuffer;

    .line 7
    iget v12, v0, Le/b/a/a/o/g/b/a;->c:I

    .line 8
    iget v7, v0, Le/b/a/a/o/g/b/a;->d:I

    .line 9
    iget v10, v0, Le/b/a/a/o/g/b/a;->e:I

    .line 10
    iget-object v15, v0, Le/b/a/a/o/g/b/a;->b:Ljava/nio/FloatBuffer;

    .line 11
    iget v0, v0, Le/b/a/a/o/g/b/a;->f:I

    if-eqz v4, :cond_4

    const-string v6, "draw start"

    .line 12
    invoke-static {v6}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v6, v4, Le/b/a/a/o/g/b/d;->a:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "glUseProgram"

    invoke-static {v6}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    const v6, 0x84c0

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v6, v4, Le/b/a/a/o/g/b/d;->i:I

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, v4, Le/b/a/a/o/g/b/d;->b:I

    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-static {v3, v6, v14, v5, v14}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v3, "glUniformMatrix4fv"

    invoke-static {v3}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v5, v4, Le/b/a/a/o/g/b/d;->c:I

    invoke-static {v5, v6, v14, v2, v14}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v3}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v2, v4, Le/b/a/a/o/g/b/d;->g:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v2, "glEnableVertexAttribArray"

    invoke-static {v2}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v6, v4, Le/b/a/a/o/g/b/d;->g:I

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v3, "glVertexAttribPointer"

    invoke-static {v3}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v5, v4, Le/b/a/a/o/g/b/d;->h:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v2}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v13, v4, Le/b/a/a/o/g/b/d;->h:I

    const/4 v2, 0x2

    const/16 v5, 0x1406

    const/16 v16, 0x0

    const/4 v6, 0x0

    move v14, v2

    move-object v2, v15

    move v15, v5

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v3}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v0, v4, Le/b/a/a/o/g/b/d;->d:I

    if-ltz v0, :cond_3

    iget-object v2, v4, Le/b/a/a/o/g/b/d;->j:[F

    const/16 v3, 0x9

    invoke-static {v0, v3, v2, v6}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    iget v0, v4, Le/b/a/a/o/g/b/d;->e:I

    iget-object v2, v4, Le/b/a/a/o/g/b/d;->k:[F

    invoke-static {v0, v3, v2, v6}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v0, v4, Le/b/a/a/o/g/b/d;->f:I

    iget v2, v4, Le/b/a/a/o/g/b/d;->l:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_3
    const/4 v0, 0x5

    invoke-static {v0, v6, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    invoke-static {v0}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v0, v4, Le/b/a/a/o/g/b/d;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v4, Le/b/a/a/o/g/b/d;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v4, Le/b/a/a/o/g/b/d;->i:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const-string v0, "gl"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Le/b/a/a/o/g/a;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 2
    :goto_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 3
    iget-object v0, v0, Le/b/a/a/p/h;->L:Le/b/a/a/p/n/a;

    .line 4
    iput p2, v0, Le/b/a/a/p/n/a;->h:I

    iput p3, v0, Le/b/a/a/p/n/a;->i:I

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RemoteDisplayView onSurfaceChanged "

    aput-object v2, v1, p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, " "

    aput-object p2, v1, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "CarLife_SDK"

    const-string p3, "tag"

    .line 6
    invoke-static {p1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "args"

    invoke-static {v1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12

    const-string p2, "gl"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/b/a/a/o/g/b/d;

    sget-object p2, Le/b/a/a/o/g/b/d$b;->f:Le/b/a/a/o/g/b/d$b;

    invoke-direct {p1, p2}, Le/b/a/a/o/g/b/d;-><init>(Le/b/a/a/o/g/b/d$b;)V

    new-instance p2, Le/b/a/a/o/g/b/b;

    invoke-direct {p2, p1}, Le/b/a/a/o/g/b/b;-><init>(Le/b/a/a/o/g/b/d;)V

    .line 1
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Le/b/a/a/o/g/a;->a(Z)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    .line 2
    :goto_0
    new-instance p1, Le/b/a/a/o/g/a;

    .line 3
    iget-object v2, p2, Le/b/a/a/o/g/b/b;->b:Le/b/a/a/o/g/b/d;

    if-eqz v2, :cond_4

    new-array v3, v1, [I

    const/4 v11, 0x0

    .line 4
    invoke-static {v1, v3, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v4, "glGenTextures"

    invoke-static {v4}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    aget v3, v3, v11

    iget v4, v2, Le/b/a/a/o/g/b/d;->i:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "glBindTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    const v4, 0x8d65

    const/16 v5, 0x2801

    const v6, 0x46180400    # 9729.0f

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2800

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v6, 0x812f

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2803

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v4, "glTexParameter"

    invoke-static {v4}, Le/b/a/a/o/g/b/c;->d(Ljava/lang/String;)V

    iget v2, v2, Le/b/a/a/o/g/b/d;->i:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x78

    move-object v2, p1

    .line 5
    invoke-direct/range {v2 .. v10}, Le/b/a/a/o/g/a;-><init>(IIIFII[II)V

    new-instance v2, Le/b/a/a/p/p/b;

    invoke-direct {v2, p0}, Le/b/a/a/p/p/b;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;)V

    .line 6
    iput-object v2, p1, Le/b/a/a/o/g/a;->i:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 7
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    if-nez v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v2, Le/b/a/a/o/g/a;->h:Landroid/view/Surface;

    .line 9
    :goto_1
    check-cast p1, Le/b/a/a/p/h;

    invoke-virtual {p1, v0}, Le/b/a/a/p/h;->z(Landroid/view/Surface;)V

    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->b:Le/b/a/a/o/g/b/b;

    const-string p1, "CarLife_SDK"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "RemoteDisplayView onSurfaceCreated "

    aput-object v0, p2, v11

    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    aput-object v0, p2, v1

    const-string v0, "tag"

    .line 10
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 13
    :cond_4
    throw v0
.end method
