.class public Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onAnimationCancel"

    aput-object v1, p1, v0

    const-string v0, "RingProgressBar"

    invoke-static {v0, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "onAnimationEnd"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RingProgressBar"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;

    iget-object v0, v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    iget-boolean v0, v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->o:Z

    if-nez v0, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v3, "check cancel=false"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;

    iget-object v0, v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->c()V

    goto :goto_0

    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    const-string v3, "check cancel=ture"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;

    iget-object v0, v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    iput-boolean v2, v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->o:Z

    :goto_0
    const/16 v0, 0x7d4

    invoke-static {v0}, Le/b/b/p/b;->a(I)V

    :try_start_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0}, Le/b/a/a/c;->p0()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0}, Le/b/a/a/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;

    iget-object v0, v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f00e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Le/b/b/o/p;->F0()Le/b/b/o/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Le/b/b/o/p;->G0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "aoa connection get exception"

    aput-object v3, p1, v2

    invoke-static {v1, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
