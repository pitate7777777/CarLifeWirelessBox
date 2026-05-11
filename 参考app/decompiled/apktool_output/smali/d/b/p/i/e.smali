.class public Ld/b/p/i/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/i/m;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/p/i/e$a;
    }
.end annotation


# instance fields
.field public e:Landroid/content/Context;

.field public f:Landroid/view/LayoutInflater;

.field public g:Ld/b/p/i/g;

.field public h:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public i:I

.field public j:I

.field public k:I

.field public l:Ld/b/p/i/m$a;

.field public m:Ld/b/p/i/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ld/b/p/i/e;->k:I

    const/4 p2, 0x0

    iput p2, p0, Ld/b/p/i/e;->j:I

    .line 2
    iput-object p1, p0, Ld/b/p/i/e;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ld/b/p/i/e;->f:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/i/g;Z)V
    .locals 1

    iget-object v0, p0, Ld/b/p/i/e;->l:Ld/b/p/i/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ld/b/p/i/m$a;->a(Ld/b/p/i/g;Z)V

    :cond_0
    return-void
.end method

.method public b()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    if-nez v0, :cond_0

    new-instance v0, Ld/b/p/i/e$a;

    invoke-direct {v0, p0}, Ld/b/p/i/e$a;-><init>(Ld/b/p/i/e;)V

    iput-object v0, p0, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    :cond_0
    iget-object v0, p0, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;Ld/b/p/i/g;)V
    .locals 2

    iget v0, p0, Ld/b/p/i/e;->j:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Ld/b/p/i/e;->j:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ld/b/p/i/e;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/b/p/i/e;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object p1, p0, Ld/b/p/i/e;->e:Landroid/content/Context;

    iget-object v0, p0, Ld/b/p/i/e;->f:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ld/b/p/i/e;->f:Landroid/view/LayoutInflater;

    :cond_1
    iput-object p2, p0, Ld/b/p/i/e;->g:Ld/b/p/i/g;

    iget-object p1, p0, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ld/b/p/i/e$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public e(Ld/b/p/i/g;Ld/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Ld/b/p/i/g;Ld/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Ld/b/p/i/m$a;)V
    .locals 0

    iput-object p1, p0, Ld/b/p/i/e;->l:Ld/b/p/i/m$a;

    return-void
.end method

.method public i(Ld/b/p/i/r;)Z
    .locals 6

    invoke-virtual {p1}, Ld/b/p/i/g;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ld/b/p/i/h;

    invoke-direct {v0, p1}, Ld/b/p/i/h;-><init>(Ld/b/p/i/g;)V

    .line 1
    iget-object v1, v0, Ld/b/p/i/h;->e:Ld/b/p/i/g;

    new-instance v2, Ld/b/k/i$a;

    .line 2
    iget-object v3, v1, Ld/b/p/i/g;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v2, v3}, Ld/b/k/i$a;-><init>(Landroid/content/Context;)V

    new-instance v3, Ld/b/p/i/e;

    .line 4
    iget-object v4, v2, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 5
    sget v5, Ld/b/g;->abc_list_menu_item_layout:I

    invoke-direct {v3, v4, v5}, Ld/b/p/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Ld/b/p/i/h;->g:Ld/b/p/i/e;

    .line 6
    iput-object v0, v3, Ld/b/p/i/e;->l:Ld/b/p/i/m$a;

    .line 7
    iget-object v4, v0, Ld/b/p/i/h;->e:Ld/b/p/i/g;

    .line 8
    iget-object v5, v4, Ld/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Ld/b/p/i/g;->b(Ld/b/p/i/m;Landroid/content/Context;)V

    .line 9
    iget-object v3, v0, Ld/b/p/i/h;->g:Ld/b/p/i/e;

    invoke-virtual {v3}, Ld/b/p/i/e;->b()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 10
    iget-object v4, v2, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    iput-object v0, v4, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 11
    iget-object v3, v1, Ld/b/p/i/g;->o:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 12
    iput-object v3, v4, Landroidx/appcompat/app/AlertController$b;->g:Landroid/view/View;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, v1, Ld/b/p/i/g;->n:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-object v3, v4, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    .line 15
    iget-object v1, v1, Ld/b/p/i/g;->m:Ljava/lang/CharSequence;

    .line 16
    iput-object v1, v4, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 17
    :goto_0
    iget-object v1, v2, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnKeyListener;

    .line 18
    invoke-virtual {v2}, Ld/b/k/i$a;->a()Ld/b/k/i;

    move-result-object v1

    iput-object v1, v0, Ld/b/p/i/h;->f:Ld/b/k/i;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Ld/b/p/i/h;->f:Ld/b/k/i;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Ld/b/p/i/h;->f:Ld/b/k/i;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 19
    iget-object v0, p0, Ld/b/p/i/e;->l:Ld/b/p/i/m$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ld/b/p/i/m$a;->b(Ld/b/p/i/g;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public j(Z)V
    .locals 0

    iget-object p1, p0, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld/b/p/i/e$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Ld/b/p/i/e;->g:Ld/b/p/i/g;

    iget-object p2, p0, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    invoke-virtual {p2, p3}, Ld/b/p/i/e$a;->b(I)Ld/b/p/i/i;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Ld/b/p/i/g;->s(Landroid/view/MenuItem;Ld/b/p/i/m;I)Z

    return-void
.end method
