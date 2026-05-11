.class public Le/c/a/a/i0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/c/a/a/i0/a;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/a;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/e;->a:Le/c/a/a/i0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Le/c/a/a/i0/e;->a:Le/c/a/a/i0/a;

    iget-object v0, v0, Le/c/a/a/i0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    iget-object v0, p0, Le/c/a/a/i0/e;->a:Le/c/a/a/i0/a;

    iget-object v0, v0, Le/c/a/a/i0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    return-void
.end method
