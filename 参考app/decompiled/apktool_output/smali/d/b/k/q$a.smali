.class public Ld/b/k/q$a;
.super Ld/h/l/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/k/q;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/q;


# direct methods
.method public constructor <init>(Ld/b/k/q;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    invoke-direct {p0}, Ld/h/l/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    iget-object p1, p1, Ld/b/k/q;->e:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    iget-object p1, p1, Ld/b/k/q;->e:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->v:Ld/h/l/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/h/l/s;->d(Ld/h/l/t;)Ld/h/l/s;

    iget-object p1, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    iget-object p1, p1, Ld/b/k/q;->e:Ld/b/k/m;

    iput-object v0, p1, Ld/b/k/m;->v:Ld/h/l/s;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    iget-object p1, p1, Ld/b/k/q;->e:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
