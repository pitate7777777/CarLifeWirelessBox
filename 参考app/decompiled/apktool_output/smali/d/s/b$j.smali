.class public Ld/s/b$j;
.super Ld/s/l;
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
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ld/s/b;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Ld/s/b$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ld/s/l;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/s/b$j;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ld/s/i;)V
    .locals 1

    iget-object p1, p0, Ld/s/b$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/s/s;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public b(Ld/s/i;)V
    .locals 1

    iget-object p1, p0, Ld/s/b$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ld/s/s;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Ld/s/i;)V
    .locals 1

    iget-object p1, p0, Ld/s/b$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/s/s;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/s/b$j;->a:Z

    return-void
.end method

.method public e(Ld/s/i;)V
    .locals 2

    iget-boolean v0, p0, Ld/s/b$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/s/b$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/s/s;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-void
.end method
