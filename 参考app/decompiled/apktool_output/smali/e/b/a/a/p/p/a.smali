.class public final synthetic Le/b/a/a/p/p/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;


# direct methods
.method public synthetic constructor <init>(IILcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/b/a/a/p/p/a;->e:I

    iput p2, p0, Le/b/a/a/p/p/a;->f:I

    iput-object p3, p0, Le/b/a/a/p/p/a;->g:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Le/b/a/a/p/p/a;->e:I

    iget v1, p0, Le/b/a/a/p/p/a;->f:I

    iget-object v2, p0, Le/b/a/a/p/p/a;->g:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    invoke-static {v0, v1, v2}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;->b(IILcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    return-void
.end method
