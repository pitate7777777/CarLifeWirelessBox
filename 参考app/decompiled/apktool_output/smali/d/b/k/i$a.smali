.class public Ld/b/k/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/b/k/i;->c(Landroid/content/Context;I)I

    move-result v0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/appcompat/app/AlertController$b;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, v0}, Ld/b/k/i;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput v0, p0, Ld/b/k/i$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Ld/b/k/i;
    .locals 15

    new-instance v0, Ld/b/k/i;

    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Ld/b/k/i$a;->b:I

    invoke-direct {v0, v1, v2}, Ld/b/k/i;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v10, v0, Ld/b/k/i;->g:Landroidx/appcompat/app/AlertController;

    .line 1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->g:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    .line 2
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 4
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 6
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    iput v12, v10, Landroidx/appcompat/app/AlertController;->B:I

    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    iget v2, v1, Landroidx/appcompat/app/AlertController$b;->c:I

    if-eqz v2, :cond_3

    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertController;->f(I)V

    :cond_3
    iget v2, v1, Landroidx/appcompat/app/AlertController$b;->e:I

    if-eqz v2, :cond_5

    if-eqz v10, :cond_4

    .line 8
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, v10, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 9
    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertController;->f(I)V

    goto :goto_0

    .line 10
    :cond_4
    throw v11

    .line 11
    :cond_5
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 12
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_6
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, -0x1

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, -0x2

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    if-nez v2, :cond_9

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_11

    .line 14
    :cond_9
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v3, v10, Landroidx/appcompat/app/AlertController;->L:I

    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->x:Z

    if-eqz v3, :cond_a

    new-instance v14, Ld/b/k/f;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v6, v10, Landroidx/appcompat/app/AlertController;->M:I

    const v7, 0x1020014

    iget-object v8, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    move-object v3, v14

    move-object v4, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Ld/b/k/f;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_4

    :cond_a
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->y:Z

    if-eqz v3, :cond_b

    iget v3, v10, Landroidx/appcompat/app/AlertController;->N:I

    goto :goto_3

    :cond_b
    iget v3, v10, Landroidx/appcompat/app/AlertController;->O:I

    :goto_3
    iget-object v14, v1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_c

    goto :goto_4

    :cond_c
    new-instance v14, Landroidx/appcompat/app/AlertController$d;

    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    const v5, 0x1020014

    iget-object v6, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    invoke-direct {v14, v4, v3, v5, v6}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_4
    iput-object v14, v10, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    iget v3, v1, Landroidx/appcompat/app/AlertController$b;->z:I

    iput v3, v10, Landroidx/appcompat/app/AlertController;->I:I

    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_d

    new-instance v3, Ld/b/k/g;

    invoke-direct {v3, v1, v10}, Ld/b/k/g;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    goto :goto_5

    :cond_d
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->A:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_e

    new-instance v3, Ld/b/k/h;

    invoke-direct {v3, v1, v2, v10}, Ld/b/k/h;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_e
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->y:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->x:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x2

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_10
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 15
    :cond_11
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->v:Z

    if-eqz v1, :cond_12

    .line 16
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    iput v12, v10, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean v13, v10, Landroidx/appcompat/app/AlertController;->n:Z

    iput v12, v10, Landroidx/appcompat/app/AlertController;->j:I

    iput v12, v10, Landroidx/appcompat/app/AlertController;->k:I

    iput v12, v10, Landroidx/appcompat/app/AlertController;->l:I

    iput v12, v10, Landroidx/appcompat/app/AlertController;->m:I

    goto :goto_7

    .line 17
    :cond_12
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    iput v12, v10, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean v12, v10, Landroidx/appcompat/app/AlertController;->n:Z

    goto :goto_7

    .line 18
    :cond_13
    iget v1, v1, Landroidx/appcompat/app/AlertController$b;->t:I

    if-eqz v1, :cond_14

    .line 19
    iput-object v11, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    iput v1, v10, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean v12, v10, Landroidx/appcompat/app/AlertController;->n:Z

    .line 20
    :cond_14
    :goto_7
    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_15
    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_16
    return-object v0
.end method
