.class public final synthetic Le/b/a/a/p/p/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;


# direct methods
.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/p/b;->a:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/p/b;->a:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    invoke-static {v0, p1}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->a(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
