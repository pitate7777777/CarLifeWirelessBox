.class public final Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;
.super Landroid/opengl/GLSurfaceView;
.source ""

# interfaces
.implements Le/b/a/a/p/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;,
        Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;
    }
.end annotation


# instance fields
.field public final e:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;->e:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/p/h;

    invoke-virtual {p1, p0}, Le/b/a/a/p/h;->s(Le/b/a/a/p/g;)V

    return-void
.end method

.method public static final b(IILcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p2}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    mul-float v2, v2, p0

    float-to-int p0, v2

    .line 1
    new-instance p1, Lf/c;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    div-float/2addr v1, p0

    float-to-int p0, v1

    new-instance v0, Lf/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 2
    :goto_0
    iget-object p0, p1, Lf/c;->e:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 4
    iget-object p1, p1, Lf/c;->f:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    new-instance v0, Le/b/a/a/p/p/a;

    invoke-direct {v0, p1, p2, p0}, Le/b/a/a/p/p/a;-><init>(IILcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
