.class public Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/view/LoadingProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 1
    iget-object p1, p1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 3
    iget-object p1, p1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 5
    iget-object v3, v3, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/widget/ImageView;

    new-array v4, v0, [F

    .line 6
    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 7
    iget-object v4, v4, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/widget/ImageView;

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_2

    const-string v5, "scaleY"

    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 9
    iput-object v2, v1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->m:Landroid/animation/AnimatorSet;

    .line 10
    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 11
    iget-object v1, v1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->m:Landroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 13
    iget-object p1, p1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->m:Landroid/animation/AnimatorSet;

    .line 14
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;->a:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 15
    iget-object p1, p1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->m:Landroid/animation/AnimatorSet;

    .line 16
    new-instance v0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;

    invoke-direct {v0, p0}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a$a;-><init>(Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
