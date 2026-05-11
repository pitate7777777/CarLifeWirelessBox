.class public Ld/s/b$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/b;->l(Landroid/view/ViewGroup;Ld/s/q;Ld/s/q;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/s/b$k;

.field public mViewBounds:Ld/s/b$k;


# direct methods
.method public constructor <init>(Ld/s/b;Ld/s/b$k;)V
    .locals 0

    iput-object p2, p0, Ld/s/b$h;->a:Ld/s/b$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p1, p0, Ld/s/b$h;->a:Ld/s/b$k;

    iput-object p1, p0, Ld/s/b$h;->mViewBounds:Ld/s/b$k;

    return-void
.end method
