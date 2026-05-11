.class public Ld/h/l/s$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/l/s;->f(Ld/h/l/v;)Ld/h/l/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/h/l/v;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/h/l/s;Ld/h/l/v;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/h/l/s$b;->a:Ld/h/l/v;

    iput-object p3, p0, Ld/h/l/s$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Ld/h/l/s$b;->a:Ld/h/l/v;

    check-cast p1, Ld/b/k/w$c;

    .line 1
    iget-object p1, p1, Ld/b/k/w$c;->a:Ld/b/k/w;

    iget-object p1, p1, Ld/b/k/w;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
