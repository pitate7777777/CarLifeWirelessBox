.class public Ld/b/k/w$b;
.super Ld/h/l/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/w;


# direct methods
.method public constructor <init>(Ld/b/k/w;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/w$b;->a:Ld/b/k/w;

    invoke-direct {p0}, Ld/h/l/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/w$b;->a:Ld/b/k/w;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/k/w;->u:Ld/b/p/g;

    iget-object p1, p1, Ld/b/k/w;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
