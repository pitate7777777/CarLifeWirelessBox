.class public Ld/b/p/g$a;
.super Ld/h/l/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/p/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Ld/b/p/g;


# direct methods
.method public constructor <init>(Ld/b/p/g;)V
    .locals 0

    iput-object p1, p0, Ld/b/p/g$a;->c:Ld/b/p/g;

    invoke-direct {p0}, Ld/h/l/u;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/b/p/g$a;->a:Z

    iput p1, p0, Ld/b/p/g$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Ld/b/p/g$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld/b/p/g$a;->b:I

    iget-object v0, p0, Ld/b/p/g$a;->c:Ld/b/p/g;

    iget-object v0, v0, Ld/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ld/b/p/g$a;->c:Ld/b/p/g;

    iget-object p1, p1, Ld/b/p/g;->d:Ld/h/l/t;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld/h/l/t;->a(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 1
    iput p1, p0, Ld/b/p/g$a;->b:I

    iput-boolean p1, p0, Ld/b/p/g$a;->a:Z

    iget-object v0, p0, Ld/b/p/g$a;->c:Ld/b/p/g;

    .line 2
    iput-boolean p1, v0, Ld/b/p/g;->e:Z

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Ld/b/p/g$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b/p/g$a;->a:Z

    iget-object p1, p0, Ld/b/p/g$a;->c:Ld/b/p/g;

    iget-object p1, p1, Ld/b/p/g;->d:Ld/h/l/t;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld/h/l/t;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method
