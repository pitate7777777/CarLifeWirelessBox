.class public Ld/b/p/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/b/p/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ld/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/h<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/b/p/e$a;->b:Landroid/content/Context;

    iput-object p2, p0, Ld/b/p/e$a;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/b/p/e$a;->c:Ljava/util/ArrayList;

    new-instance p1, Ld/e/h;

    invoke-direct {p1}, Ld/e/h;-><init>()V

    iput-object p1, p0, Ld/b/p/e$a;->d:Ld/e/h;

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/b/p/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Ld/b/p/e$a;->e(Ld/b/p/a;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p0, p2}, Ld/b/p/e$a;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Ld/b/p/a;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Ld/b/p/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Ld/b/p/e$a;->e(Ld/b/p/a;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v1, Ld/b/p/i/j;

    iget-object v2, p0, Ld/b/p/e$a;->b:Landroid/content/Context;

    check-cast p2, Ld/h/g/a/b;

    invoke-direct {v1, v2, p2}, Ld/b/p/i/j;-><init>(Landroid/content/Context;Ld/h/g/a/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Ld/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/b/p/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Ld/b/p/e$a;->e(Ld/b/p/a;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p0, p2}, Ld/b/p/e$a;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Ld/b/p/a;)V
    .locals 1

    iget-object v0, p0, Ld/b/p/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Ld/b/p/e$a;->e(Ld/b/p/a;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public e(Ld/b/p/a;)Landroid/view/ActionMode;
    .locals 4

    iget-object v0, p0, Ld/b/p/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ld/b/p/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/p/e;

    if-eqz v2, :cond_0

    iget-object v3, v2, Ld/b/p/e;->b:Ld/b/p/a;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ld/b/p/e;

    iget-object v1, p0, Ld/b/p/e$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ld/b/p/e;-><init>(Landroid/content/Context;Ld/b/p/a;)V

    iget-object p1, p0, Ld/b/p/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final f(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Ld/b/p/e$a;->d:Ld/e/h;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Ld/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, Ld/b/p/i/o;

    iget-object v1, p0, Ld/b/p/e$a;->b:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Ld/h/g/a/a;

    invoke-direct {v0, v1, v2}, Ld/b/p/i/o;-><init>(Landroid/content/Context;Ld/h/g/a/a;)V

    iget-object v1, p0, Ld/b/p/e$a;->d:Ld/e/h;

    invoke-virtual {v1, p1, v0}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
