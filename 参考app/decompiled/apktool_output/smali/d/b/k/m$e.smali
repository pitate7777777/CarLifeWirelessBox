.class public Ld/b/k/m$e;
.super Ld/b/p/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic f:Ld/b/k/m;


# direct methods
.method public constructor <init>(Ld/b/k/m;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    invoke-direct {p0, p2}, Ld/b/p/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    new-instance v0, Ld/b/p/e$a;

    iget-object v1, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    iget-object v1, v1, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ld/b/p/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 1
    iget-object v2, p1, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ld/b/p/a;->c()V

    :cond_0
    new-instance v2, Ld/b/k/m$d;

    invoke-direct {v2, p1, v0}, Ld/b/k/m$d;-><init>(Ld/b/k/m;Ld/b/p/a$a;)V

    .line 2
    invoke-virtual {p1}, Ld/b/k/m;->F()V

    iget-object v3, p1, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3, v2}, Ld/b/k/a;->m(Ld/b/p/a$a;)Ld/b/p/a;

    move-result-object v3

    iput-object v3, p1, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz v3, :cond_1

    iget-object v4, p1, Ld/b/k/m;->k:Ld/b/k/k;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Ld/b/k/k;->r(Ld/b/p/a;)V

    :cond_1
    iget-object v3, p1, Ld/b/k/m;->r:Ld/b/p/a;

    if-nez v3, :cond_10

    .line 4
    invoke-virtual {p1}, Ld/b/k/m;->y()V

    iget-object v3, p1, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ld/b/p/a;->c()V

    :cond_2
    iget-object v3, p1, Ld/b/k/m;->k:Ld/b/k/k;

    if-eqz v3, :cond_3

    iget-boolean v4, p1, Ld/b/k/m;->P:Z

    if-nez v4, :cond_3

    :try_start_0
    invoke-interface {v3, v2}, Ld/b/k/k;->w(Ld/b/p/a$a;)Ld/b/p/a;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_4

    iput-object v3, p1, Ld/b/k/m;->r:Ld/b/p/a;

    goto/16 :goto_6

    :cond_4
    iget-object v3, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_9

    iget-boolean v3, p1, Ld/b/k/m;->G:Z

    if-eqz v3, :cond_6

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p1, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Ld/b/a;->actionBarTheme:I

    invoke-virtual {v6, v7, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    iget-object v7, p1, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Ld/b/p/c;

    iget-object v8, p1, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-direct {v6, v8, v5}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Ld/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_5
    iget-object v6, p1, Ld/b/k/m;->h:Landroid/content/Context;

    :goto_1
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-direct {v7, v6, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v7, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v7, Landroid/widget/PopupWindow;

    sget v8, Ld/b/a;->actionModePopupWindowStyle:I

    invoke-direct {v7, v6, v1, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ld/b/k/m$i;->q1(Landroid/widget/PopupWindow;I)V

    iget-object v7, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    iget-object v8, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v7, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Ld/b/a;->actionBarSize:I

    invoke-virtual {v7, v8, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iget-object v6, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v3, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v3, Ld/b/k/q;

    invoke-direct {v3, p1}, Ld/b/k/q;-><init>(Ld/b/k/m;)V

    iput-object v3, p1, Ld/b/k/m;->u:Ljava/lang/Runnable;

    goto :goto_3

    :cond_6
    iget-object v3, p1, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    sget v6, Ld/b/f;->action_mode_bar_stub:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v3, :cond_9

    .line 7
    invoke-virtual {p1}, Ld/b/k/m;->F()V

    iget-object v6, p1, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v6, :cond_7

    .line 8
    invoke-virtual {v6}, Ld/b/k/a;->d()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_7
    move-object v6, v1

    :goto_2
    if-nez v6, :cond_8

    iget-object v6, p1, Ld/b/k/m;->h:Landroid/content/Context;

    .line 9
    :cond_8
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v3, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_9
    :goto_3
    iget-object v3, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Ld/b/k/m;->y()V

    iget-object v3, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v3, Ld/b/p/d;

    iget-object v6, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v8, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    invoke-direct {v3, v6, v7, v2, v4}, Ld/b/p/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Ld/b/p/a$a;Z)V

    .line 10
    iget-object v4, v3, Ld/b/p/d;->l:Ld/b/p/i/g;

    .line 11
    invoke-virtual {v2, v3, v4}, Ld/b/k/m$d;->c(Ld/b/p/a;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Ld/b/p/d;->i()V

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->f(Ld/b/p/a;)V

    iput-object v3, p1, Ld/b/k/m;->r:Ld/b/p/a;

    invoke-virtual {p1}, Ld/b/k/m;->L()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_b

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Ld/h/l/p;->b(Landroid/view/View;)Ld/h/l/s;

    move-result-object v2

    invoke-virtual {v2, v3}, Ld/h/l/s;->a(F)Ld/h/l/s;

    iput-object v2, p1, Ld/b/k/m;->v:Ld/h/l/s;

    new-instance v3, Ld/b/k/r;

    invoke-direct {v3, p1}, Ld/b/k/r;-><init>(Ld/b/k/m;)V

    .line 12
    iget-object v4, v2, Ld/h/l/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_c

    invoke-virtual {v2, v4, v3}, Ld/h/l/s;->e(Landroid/view/View;Ld/h/l/t;)V

    goto :goto_5

    .line 13
    :cond_b
    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->requestApplyInsets()V

    .line 15
    :cond_c
    :goto_5
    iget-object v2, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_e

    iget-object v2, p1, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p1, Ld/b/k/m;->u:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_d
    iput-object v1, p1, Ld/b/k/m;->r:Ld/b/p/a;

    :cond_e
    :goto_6
    iget-object v2, p1, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz v2, :cond_f

    iget-object v3, p1, Ld/b/k/m;->k:Ld/b/k/k;

    if-eqz v3, :cond_f

    invoke-interface {v3, v2}, Ld/b/k/k;->r(Ld/b/p/a;)V

    :cond_f
    iget-object v2, p1, Ld/b/k/m;->r:Ld/b/p/a;

    .line 16
    iput-object v2, p1, Ld/b/k/m;->r:Ld/b/p/a;

    :cond_10
    iget-object p1, p1, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz p1, :cond_11

    .line 17
    invoke-virtual {v0, p1}, Ld/b/p/e$a;->e(Ld/b/p/a;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_11
    return-object v1

    .line 18
    :cond_12
    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    invoke-virtual {v0, p1}, Ld/b/k/m;->w(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3
    invoke-virtual {v0}, Ld/b/k/m;->F()V

    iget-object v4, v0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4, v3, p1}, Ld/b/k/a;->f(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Ld/b/k/m;->K:Ld/b/k/m$k;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ld/b/k/m;->J(Ld/b/k/m$k;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, v0, Ld/b/k/m;->K:Ld/b/k/m$k;

    if-eqz p1, :cond_0

    iput-boolean v2, p1, Ld/b/k/m$k;->l:Z

    goto :goto_0

    :cond_2
    iget-object v3, v0, Ld/b/k/m;->K:Ld/b/k/m$k;

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ld/b/k/m;->J(Ld/b/k/m$k;ILandroid/view/KeyEvent;I)Z

    move-result p1

    iput-boolean v1, v3, Ld/b/k/m$k;->k:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Ld/b/p/i/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ld/b/k/m;->F()V

    iget-object p1, p2, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Ld/b/k/a;->b(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ld/b/k/m;->F()V

    iget-object p1, p2, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ld/b/k/a;->b(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2, p1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object p1

    iget-boolean v1, p1, Ld/b/k/m$k;->m:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1, v0}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Ld/b/p/i/g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ld/b/p/i/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, Ld/b/p/i/g;->y:Z

    .line 2
    :cond_2
    iget-object v2, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 3
    iput-boolean v1, v0, Ld/b/p/i/g;->y:Z

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-object v0, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object p2, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    .line 1
    iget-boolean v0, v0, Ld/b/k/m;->w:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ld/b/k/m$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Ld/b/k/m$e;->f:Ld/b/k/m;

    .line 4
    iget-boolean v0, v0, Ld/b/k/m;->w:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ld/b/k/m$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
