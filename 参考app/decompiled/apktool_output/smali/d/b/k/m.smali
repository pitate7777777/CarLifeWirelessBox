.class public Ld/b/k/m;
.super Ld/b/k/l;
.source ""

# interfaces
.implements Ld/b/p/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/k/m$i;,
        Ld/b/k/m$f;,
        Ld/b/k/m$h;,
        Ld/b/k/m$g;,
        Ld/b/k/m$e;,
        Ld/b/k/m$j;,
        Ld/b/k/m$k;,
        Ld/b/k/m$c;,
        Ld/b/k/m$l;,
        Ld/b/k/m$d;
    }
.end annotation


# static fields
.field public static final d0:Ld/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e0:Z = false

.field public static final f0:[I

.field public static final g0:Z

.field public static final h0:Z

.field public static i0:Z


# instance fields
.field public A:Landroid/view/View;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:[Ld/b/k/m$k;

.field public K:Ld/b/k/m$k;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Ld/b/k/m$g;

.field public V:Ld/b/k/m$g;

.field public W:Z

.field public X:I

.field public final Y:Ljava/lang/Runnable;

.field public Z:Z

.field public a0:Landroid/graphics/Rect;

.field public b0:Landroid/graphics/Rect;

.field public c0:Ld/b/k/t;

.field public final g:Ljava/lang/Object;

.field public final h:Landroid/content/Context;

.field public i:Landroid/view/Window;

.field public j:Ld/b/k/m$e;

.field public final k:Ld/b/k/k;

.field public l:Ld/b/k/a;

.field public m:Landroid/view/MenuInflater;

.field public n:Ljava/lang/CharSequence;

.field public o:Ld/b/q/c0;

.field public p:Ld/b/k/m$c;

.field public q:Ld/b/k/m$l;

.field public r:Ld/b/p/a;

.field public s:Landroidx/appcompat/widget/ActionBarContextView;

.field public t:Landroid/widget/PopupWindow;

.field public u:Ljava/lang/Runnable;

.field public v:Ld/h/l/s;

.field public w:Z

.field public x:Z

.field public y:Landroid/view/ViewGroup;

.field public z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld/e/h;

    invoke-direct {v0}, Ld/e/h;-><init>()V

    sput-object v0, Ld/b/k/m;->d0:Ld/e/h;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    sput-object v1, Ld/b/k/m;->f0:[I

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Ld/b/k/m;->g0:Z

    sput-boolean v0, Ld/b/k/m;->h0:Z

    sget-boolean v1, Ld/b/k/m;->e0:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Ld/b/k/m;->i0:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Ld/b/k/m$a;

    invoke-direct {v2, v1}, Ld/b/k/m$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v0, Ld/b/k/m;->i0:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ld/b/k/k;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ld/b/k/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/b/k/m;->v:Ld/h/l/s;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/b/k/m;->w:Z

    const/16 v1, -0x64

    iput v1, p0, Ld/b/k/m;->Q:I

    new-instance v2, Ld/b/k/m$b;

    invoke-direct {v2, p0}, Ld/b/k/m$b;-><init>(Ld/b/k/m;)V

    iput-object v2, p0, Ld/b/k/m;->Y:Ljava/lang/Runnable;

    iput-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    iput-object p3, p0, Ld/b/k/m;->k:Ld/b/k/k;

    iput-object p4, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    iget p3, p0, Ld/b/k/m;->Q:I

    if-ne p3, v1, :cond_2

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    instance-of p3, p1, Ld/b/k/j;

    if-eqz p3, :cond_0

    check-cast p1, Ld/b/k/j;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ld/b/k/j;->J()Ld/b/k/l;

    move-result-object p1

    check-cast p1, Ld/b/k/m;

    .line 3
    iget p1, p1, Ld/b/k/m;->Q:I

    .line 4
    iput p1, p0, Ld/b/k/m;->Q:I

    :cond_2
    iget p1, p0, Ld/b/k/m;->Q:I

    if-ne p1, v1, :cond_3

    sget-object p1, Ld/b/k/m;->d0:Ld/e/h;

    iget-object p3, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p1, p3, v0}, Ld/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ld/b/k/m;->Q:I

    sget-object p1, Ld/b/k/m;->d0:Ld/e/h;

    iget-object p3, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Ld/b/k/m;->r(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Ld/b/q/j;->e()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/k/m;->r(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B(Landroid/view/Menu;)Ld/b/k/m$k;
    .locals 5

    iget-object v0, p0, Ld/b/k/m;->J:[Ld/b/k/m$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final C(Landroid/content/Context;)Ld/b/k/m$g;
    .locals 3

    iget-object v0, p0, Ld/b/k/m;->U:Ld/b/k/m$g;

    if-nez v0, :cond_1

    new-instance v0, Ld/b/k/m$h;

    .line 1
    sget-object v1, Ld/b/k/v;->d:Ld/b/k/v;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ld/b/k/v;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Ld/b/k/v;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Ld/b/k/v;->d:Ld/b/k/v;

    :cond_0
    sget-object p1, Ld/b/k/v;->d:Ld/b/k/v;

    .line 2
    invoke-direct {v0, p0, p1}, Ld/b/k/m$h;-><init>(Ld/b/k/m;Ld/b/k/v;)V

    iput-object v0, p0, Ld/b/k/m;->U:Ld/b/k/m$g;

    :cond_1
    iget-object p1, p0, Ld/b/k/m;->U:Ld/b/k/m$g;

    return-object p1
.end method

.method public D(I)Ld/b/k/m$k;
    .locals 4

    iget-object v0, p0, Ld/b/k/m;->J:[Ld/b/k/m$k;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ld/b/k/m$k;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Ld/b/k/m;->J:[Ld/b/k/m$k;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Ld/b/k/m$k;

    invoke-direct {v1, p1}, Ld/b/k/m$k;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final E()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final F()V
    .locals 3

    invoke-virtual {p0}, Ld/b/k/m;->z()V

    iget-boolean v0, p0, Ld/b/k/m;->D:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Ld/b/k/w;

    iget-object v1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Ld/b/k/m;->E:Z

    invoke-direct {v0, v1, v2}, Ld/b/k/w;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Ld/b/k/w;

    iget-object v1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Ld/b/k/w;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ld/b/k/m;->Z:Z

    invoke-virtual {v0, v1}, Ld/b/k/a;->g(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final G(I)V
    .locals 2

    iget v0, p0, Ld/b/k/m;->X:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ld/b/k/m;->X:I

    iget-boolean p1, p0, Ld/b/k/m;->W:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/b/k/m;->Y:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Ld/h/l/p;->T(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Ld/b/k/m;->W:Z

    :cond_0
    return-void
.end method

.method public H(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    if-nez p2, :cond_0

    new-instance p2, Ld/b/k/m$f;

    invoke-direct {p2, p0, p1}, Ld/b/k/m$f;-><init>(Ld/b/k/m;Landroid/content/Context;)V

    iput-object p2, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    :cond_0
    iget-object p1, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    .line 2
    :goto_0
    invoke-virtual {p1}, Ld/b/k/m$g;->c()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Ld/b/k/m;->C(Landroid/content/Context;)Ld/b/k/m$g;

    move-result-object p1

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final I(Ld/b/k/m$k;Landroid/view/KeyEvent;)V
    .locals 12

    iget-boolean v0, p1, Ld/b/k/m$k;->m:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Ld/b/k/m;->P:Z

    if-eqz v0, :cond_0

    goto/16 :goto_e

    :cond_0
    iget v0, p1, Ld/b/k/m$k;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Ld/b/k/m$k;->a:I

    iget-object v4, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Ld/b/k/m$k;->o:Z

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Ld/b/k/m$k;->g:Landroid/view/View;

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1c

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1c

    const/4 v5, -0x1

    goto/16 :goto_c

    :cond_7
    :goto_1
    iget-object p2, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p0}, Ld/b/k/m;->F()V

    iget-object p2, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, Ld/b/k/a;->d()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    move-object p2, v4

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, Ld/b/k/m;->h:Landroid/content/Context;

    .line 3
    :cond_9
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v7, Ld/b/a;->actionBarPopupTheme:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    sget v7, Ld/b/a;->panelMenuListTheme:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    sget v5, Ld/b/i;->Theme_AppCompat_CompactMenu:I

    :goto_3
    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v5, Ld/b/p/c;

    invoke-direct {v5, p2, v2}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Ld/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v5, p1, Ld/b/k/m$k;->j:Landroid/content/Context;

    sget-object p2, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v5, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v5, Ld/b/j;->AppCompatTheme_panelBackground:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Ld/b/k/m$k;->b:I

    sget v5, Ld/b/j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Ld/b/k/m$k;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p2, Ld/b/k/m$j;

    iget-object v5, p1, Ld/b/k/m$k;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v5}, Ld/b/k/m$j;-><init>(Ld/b/k/m;Landroid/content/Context;)V

    iput-object p2, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Ld/b/k/m$k;->c:I

    goto :goto_4

    .line 5
    :cond_c
    iget-boolean v5, p1, Ld/b/k/m$k;->o:Z

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_d
    :goto_4
    iget-object p2, p1, Ld/b/k/m$k;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    goto :goto_6

    :cond_e
    iget-object p2, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-nez p2, :cond_f

    goto :goto_7

    :cond_f
    iget-object p2, p0, Ld/b/k/m;->q:Ld/b/k/m$l;

    if-nez p2, :cond_10

    new-instance p2, Ld/b/k/m$l;

    invoke-direct {p2, p0}, Ld/b/k/m$l;-><init>(Ld/b/k/m;)V

    iput-object p2, p0, Ld/b/k/m;->q:Ld/b/k/m$l;

    :cond_10
    iget-object p2, p0, Ld/b/k/m;->q:Ld/b/k/m$l;

    .line 7
    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    iget-object v4, p1, Ld/b/k/m$k;->i:Ld/b/p/i/e;

    if-nez v4, :cond_12

    new-instance v4, Ld/b/p/i/e;

    iget-object v5, p1, Ld/b/k/m$k;->j:Landroid/content/Context;

    sget v6, Ld/b/g;->abc_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Ld/b/p/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Ld/b/k/m$k;->i:Ld/b/p/i/e;

    .line 8
    iput-object p2, v4, Ld/b/p/i/e;->l:Ld/b/p/i/m$a;

    .line 9
    iget-object p2, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    .line 10
    iget-object v5, p2, Ld/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Ld/b/p/i/g;->b(Ld/b/p/i/m;Landroid/content/Context;)V

    .line 11
    :cond_12
    iget-object p2, p1, Ld/b/k/m$k;->i:Ld/b/p/i/e;

    iget-object v4, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    .line 12
    iget-object v5, p2, Ld/b/p/i/e;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_14

    iget-object v5, p2, Ld/b/p/i/e;->f:Landroid/view/LayoutInflater;

    sget v6, Ld/b/g;->abc_expanded_menu_layout:I

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Ld/b/p/i/e;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v4, p2, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    if-nez v4, :cond_13

    new-instance v4, Ld/b/p/i/e$a;

    invoke-direct {v4, p2}, Ld/b/p/i/e$a;-><init>(Ld/b/p/i/e;)V

    iput-object v4, p2, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    :cond_13
    iget-object v4, p2, Ld/b/p/i/e;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Ld/b/p/i/e;->m:Ld/b/p/i/e$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, Ld/b/p/i/e;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_14
    iget-object v4, p2, Ld/b/p/i/e;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    :goto_5
    iput-object v4, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    if-eqz v4, :cond_15

    :goto_6
    const/4 p2, 0x1

    goto :goto_8

    :cond_15
    :goto_7
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1d

    .line 14
    iget-object p2, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    if-nez p2, :cond_16

    goto :goto_a

    :cond_16
    iget-object p2, p1, Ld/b/k/m$k;->g:Landroid/view/View;

    if-eqz p2, :cond_17

    goto :goto_9

    :cond_17
    iget-object p2, p1, Ld/b/k/m$k;->i:Ld/b/p/i/e;

    invoke-virtual {p2}, Ld/b/p/i/e;->b()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Ld/b/p/i/e$a;

    invoke-virtual {p2}, Ld/b/p/i/e$a;->getCount()I

    move-result p2

    if-lez p2, :cond_18

    :goto_9
    const/4 p2, 0x1

    goto :goto_b

    :cond_18
    :goto_a
    const/4 p2, 0x0

    :goto_b
    if-nez p2, :cond_19

    goto :goto_d

    .line 15
    :cond_19
    iget-object p2, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_1a

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1a
    iget v4, p1, Ld/b/k/m$k;->b:I

    iget-object v5, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v4, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1b

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    iget-object v4, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    const/4 v5, -0x2

    :goto_c
    iput-boolean v2, p1, Ld/b/k/m$k;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Ld/b/k/m$k;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Ld/b/k/m$k;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Ld/b/k/m$k;->m:Z

    return-void

    :cond_1d
    :goto_d
    iput-boolean v1, p1, Ld/b/k/m$k;->o:Z

    :cond_1e
    :goto_e
    return-void
.end method

.method public final J(Ld/b/k/m$k;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/b/k/m$k;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Ld/b/p/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    :cond_3
    return v1
.end method

.method public final K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z
    .locals 10

    iget-boolean v0, p0, Ld/b/k/m;->P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/b/k/m$k;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ld/b/k/m;->K:Ld/b/k/m$k;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    :cond_2
    invoke-virtual {p0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Ld/b/k/m$k;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Ld/b/k/m$k;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Ld/b/k/m$k;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ld/b/q/c0;->g()V

    :cond_6
    iget-object v5, p1, Ld/b/k/m$k;->g:Landroid/view/View;

    if-nez v5, :cond_18

    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v5, p1, Ld/b/k/m$k;->p:Z

    if-eqz v5, :cond_12

    :cond_7
    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-nez v5, :cond_d

    .line 1
    iget-object v5, p0, Ld/b/k/m;->h:Landroid/content/Context;

    iget v7, p1, Ld/b/k/m$k;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_c

    :cond_8
    iget-object v4, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Ld/b/a;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Ld/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    sget v8, Ld/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, Ld/b/p/c;

    invoke-direct {v4, v5, v1}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Ld/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    :cond_c
    new-instance v4, Ld/b/p/i/g;

    invoke-direct {v4, v5}, Ld/b/p/i/g;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p0, v4, Ld/b/p/i/g;->e:Ld/b/p/i/g$a;

    .line 3
    invoke-virtual {p1, v4}, Ld/b/k/m$k;->a(Ld/b/p/i/g;)V

    .line 4
    iget-object v4, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-nez v4, :cond_d

    return v1

    :cond_d
    if-eqz v3, :cond_f

    iget-object v4, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v4, :cond_f

    iget-object v4, p0, Ld/b/k/m;->p:Ld/b/k/m$c;

    if-nez v4, :cond_e

    new-instance v4, Ld/b/k/m$c;

    invoke-direct {v4, p0}, Ld/b/k/m$c;-><init>(Ld/b/k/m;)V

    iput-object v4, p0, Ld/b/k/m;->p:Ld/b/k/m$c;

    :cond_e
    iget-object v4, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    iget-object v7, p0, Ld/b/k/m;->p:Ld/b/k/m$c;

    invoke-interface {v4, v5, v7}, Ld/b/q/c0;->a(Landroid/view/Menu;Ld/b/p/i/m$a;)V

    :cond_f
    iget-object v4, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v4}, Ld/b/p/i/g;->z()V

    iget v4, p1, Ld/b/k/m$k;->a:I

    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p1, v6}, Ld/b/k/m$k;->a(Ld/b/p/i/g;)V

    if-eqz v3, :cond_10

    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz p1, :cond_10

    iget-object p2, p0, Ld/b/k/m;->p:Ld/b/k/m$c;

    invoke-interface {p1, v6, p2}, Ld/b/q/c0;->a(Landroid/view/Menu;Ld/b/p/i/m$a;)V

    :cond_10
    return v1

    :cond_11
    iput-boolean v1, p1, Ld/b/k/m$k;->p:Z

    :cond_12
    iget-object v4, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v4}, Ld/b/p/i/g;->z()V

    iget-object v4, p1, Ld/b/k/m$k;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v5, v4}, Ld/b/p/i/g;->v(Landroid/os/Bundle;)V

    iput-object v6, p1, Ld/b/k/m$k;->q:Landroid/os/Bundle;

    :cond_13
    iget-object v4, p1, Ld/b/k/m$k;->g:Landroid/view/View;

    iget-object v5, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_14

    iget-object p2, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz p2, :cond_14

    iget-object v0, p0, Ld/b/k/m;->p:Ld/b/k/m$c;

    invoke-interface {p2, v6, v0}, Ld/b/q/c0;->a(Landroid/view/Menu;Ld/b/p/i/m$a;)V

    :cond_14
    iget-object p1, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {p1}, Ld/b/p/i/g;->y()V

    return v1

    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_16
    const/4 p2, -0x1

    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_17

    const/4 p2, 0x1

    goto :goto_4

    :cond_17
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, Ld/b/k/m$k;->n:Z

    iget-object v0, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v0, p2}, Ld/b/p/i/g;->setQwertyMode(Z)V

    iget-object p2, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {p2}, Ld/b/p/i/g;->y()V

    :cond_18
    iput-boolean v2, p1, Ld/b/k/m$k;->k:Z

    iput-boolean v1, p1, Ld/b/k/m$k;->l:Z

    iput-object p1, p0, Ld/b/k/m;->K:Ld/b/k/m$k;

    return v2
.end method

.method public final L()Z
    .locals 1

    iget-boolean v0, p0, Ld/b/k/m;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/h/l/p;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final M()V
    .locals 2

    iget-boolean v0, p0, Ld/b/k/m;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final N(Ld/h/l/w;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld/h/l/w;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_12

    iget-object v2, p0, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_10

    iget-object v4, p0, Ld/b/k/m;->a0:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Ld/b/k/m;->a0:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Ld/b/k/m;->b0:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Ld/b/k/m;->a0:Landroid/graphics/Rect;

    iget-object v6, p0, Ld/b/k/m;->b0:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ld/h/l/w;->b()I

    move-result p2

    invoke-virtual {p1}, Ld/h/l/w;->d()I

    move-result v7

    invoke-virtual {p1}, Ld/h/l/w;->c()I

    move-result v8

    invoke-virtual {p1}, Ld/h/l/w;->a()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Ld/b/q/d1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    invoke-static {v6}, Ld/h/l/p;->A(Landroid/view/View;)Ld/h/l/w;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ld/h/l/w;->b()I

    move-result v7

    :goto_2
    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ld/h/l/w;->c()I

    move-result v6

    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_5
    if-lez p1, :cond_8

    iget-object p1, p0, Ld/b/k/m;->A:Landroid/view/View;

    if-nez p1, :cond_8

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ld/b/k/m;->A:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    iget-object v6, p0, Ld/b/k/m;->A:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Ld/b/k/m;->A:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_a

    :cond_9
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Ld/b/k/m;->A:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_6
    iget-object p1, p0, Ld/b/k/m;->A:Landroid/view/View;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_e

    iget-object v4, p0, Ld/b/k/m;->A:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Ld/b/k/m;->A:Landroid/view/View;

    .line 1
    invoke-static {v4}, Ld/h/l/p;->C(Landroid/view/View;)I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    iget-object v5, p0, Ld/b/k/m;->h:Landroid/content/Context;

    sget v6, Ld/b/c;->abc_decor_view_status_guard_light:I

    goto :goto_9

    :cond_d
    iget-object v5, p0, Ld/b/k/m;->h:Landroid/content/Context;

    sget v6, Ld/b/c;->abc_decor_view_status_guard:I

    :goto_9
    invoke-static {v5, v6}, Ld/h/e/a;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    :cond_e
    iget-boolean v4, p0, Ld/b/k/m;->F:Z

    if-nez v4, :cond_f

    if-eqz p1, :cond_f

    const/4 v1, 0x0

    :cond_f
    move v5, p2

    goto :goto_a

    :cond_10
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_11

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, 0x0

    goto :goto_a

    :cond_11
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_13

    iget-object p2, p0, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_12
    const/4 p1, 0x0

    :cond_13
    :goto_b
    iget-object p2, p0, Ld/b/k/m;->A:Landroid/view/View;

    if-eqz p2, :cond_15

    if-eqz p1, :cond_14

    goto :goto_c

    :cond_14
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return v1
.end method

.method public a(Ld/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ld/b/k/m;->P:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ld/b/p/i/g;->k()Ld/b/p/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/b/k/m;->B(Landroid/view/Menu;)Ld/b/k/m$k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Ld/b/k/m$k;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ld/b/p/i/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ld/b/q/c0;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {p1}, Ld/b/q/c0;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {v2}, Ld/b/q/c0;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {v0}, Ld/b/q/c0;->e()Z

    iget-boolean v0, p0, Ld/b/k/m;->P:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-object v0, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Ld/b/k/m;->P:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Ld/b/k/m;->W:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ld/b/k/m;->X:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Ld/b/k/m;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ld/b/k/m;->Y:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-object v2, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Ld/b/k/m$k;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Ld/b/k/m$k;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {p1}, Ld/b/q/c0;->f()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object p1

    iput-boolean v0, p1, Ld/b/k/m$k;->o:Z

    invoke-virtual {p0, p1, v1}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld/b/k/m;->I(Ld/b/k/m$k;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/m;->z()V

    iget-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Ld/b/k/m;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/k/m;->F()V

    iget-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ld/b/k/m;->G(I)V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b/k/m;->M:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/b/k/m;->q(Z)Z

    invoke-virtual {p0}, Ld/b/k/m;->A()V

    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Ld/b/k/m$i;->k0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-nez v0, :cond_0

    .line 3
    iput-boolean p1, p0, Ld/b/k/m;->Z:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ld/b/k/a;->g(Z)V

    .line 4
    :cond_1
    :goto_1
    sget-object v0, Ld/b/k/l;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Ld/b/k/l;->j(Ld/b/k/l;)V

    sget-object v1, Ld/b/k/l;->e:Ld/e/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ld/e/c;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 5
    :cond_2
    :goto_2
    iput-boolean p1, p0, Ld/b/k/m;->N:Z

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Ld/b/k/l;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ld/b/k/l;->j(Ld/b/k/l;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ld/b/k/m;->W:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/b/k/m;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/b/k/m;->O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/k/m;->P:Z

    iget v0, p0, Ld/b/k/m;->Q:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ld/b/k/m;->d0:Ld/e/h;

    iget-object v1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ld/b/k/m;->Q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Ld/b/k/m;->d0:Ld/e/h;

    iget-object v1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_4
    :goto_2
    iget-object v0, p0, Ld/b/k/m;->U:Ld/b/k/m$g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ld/b/k/m$g;->a()V

    :cond_5
    iget-object v0, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ld/b/k/m$g;->a()V

    :cond_6
    return-void
.end method

.method public k(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ld/b/k/m;->H:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Ld/b/k/m;->D:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Ld/b/k/m;->D:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Ld/b/k/m;->M()V

    iput-boolean v4, p0, Ld/b/k/m;->E:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Ld/b/k/m;->M()V

    iput-boolean v4, p0, Ld/b/k/m;->D:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Ld/b/k/m;->M()V

    iput-boolean v4, p0, Ld/b/k/m;->F:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Ld/b/k/m;->M()V

    iput-boolean v4, p0, Ld/b/k/m;->C:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Ld/b/k/m;->M()V

    iput-boolean v4, p0, Ld/b/k/m;->B:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Ld/b/k/m;->M()V

    iput-boolean v4, p0, Ld/b/k/m;->H:Z

    return v4
.end method

.method public l(I)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/m;->z()V

    iget-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public m(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/m;->z()V

    iget-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public n(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/m;->z()V

    iget-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ld/b/k/m;->n:Ljava/lang/CharSequence;

    iget-object v0, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ld/b/q/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ld/b/k/a;->l(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/b/k/m;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p1, p0, Ld/b/k/m;->c0:Ld/b/k/t;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    sget-object v1, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Ld/b/j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ld/b/k/t;

    invoke-direct {p1}, Ld/b/k/t;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/k/t;

    iput-object v1, p0, Ld/b/k/m;->c0:Ld/b/k/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ld/b/k/t;

    invoke-direct {p1}, Ld/b/k/t;-><init>()V

    :goto_0
    iput-object p1, p0, Ld/b/k/m;->c0:Ld/b/k/t;

    :cond_1
    :goto_1
    iget-object p1, p0, Ld/b/k/m;->c0:Ld/b/k/t;

    invoke-static {}, Ld/b/q/c1;->a()Z

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 2
    sget-object v2, Ld/b/j;->View:[I

    invoke-virtual {p3, p4, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Ld/b/j;->View_theme:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "AppCompatViewInflater"

    const-string v5, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_4

    instance-of v2, p3, Ld/b/p/c;

    if-eqz v2, :cond_3

    move-object v2, p3

    check-cast v2, Ld/b/p/c;

    .line 3
    iget v2, v2, Ld/b/p/c;->a:I

    if-eq v2, v3, :cond_4

    .line 4
    :cond_3
    new-instance v2, Ld/b/p/c;

    invoke-direct {v2, p3, v3}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    move-object v2, p3

    .line 5
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto/16 :goto_4

    :sswitch_1
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_4

    :sswitch_2
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    goto/16 :goto_4

    :sswitch_3
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x9

    goto/16 :goto_4

    :sswitch_4
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :sswitch_5
    const-string v3, "ToggleButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xd

    goto :goto_4

    :sswitch_6
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    goto :goto_4

    :sswitch_7
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    goto :goto_4

    :sswitch_8
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xc

    goto :goto_4

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_4

    :sswitch_a
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :sswitch_b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    goto :goto_4

    :sswitch_c
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    goto :goto_4

    :sswitch_d
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xb

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, -0x1

    :goto_4
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Ld/b/k/t;->f()Landroid/view/View;

    move-result-object v3

    goto :goto_6

    .line 6
    :pswitch_0
    new-instance v3, Ld/b/q/b0;

    invoke-direct {v3, v2, p4}, Ld/b/q/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 7
    :pswitch_1
    new-instance v3, Ld/b/q/t;

    invoke-direct {v3, v2, p4}, Ld/b/q/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 8
    :pswitch_2
    new-instance v3, Ld/b/q/s;

    invoke-direct {v3, v2, p4}, Ld/b/q/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 9
    :pswitch_3
    new-instance v3, Ld/b/q/o;

    invoke-direct {v3, v2, p4}, Ld/b/q/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 10
    :pswitch_4
    invoke-virtual {p1, v2, p4}, Ld/b/k/t;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/b/q/d;

    move-result-object v3

    goto :goto_5

    .line 11
    :pswitch_5
    new-instance v3, Ld/b/q/h;

    invoke-direct {v3, v2, p4}, Ld/b/q/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 12
    :pswitch_6
    invoke-virtual {p1, v2, p4}, Ld/b/k/t;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/b/q/r;

    move-result-object v3

    goto :goto_5

    :pswitch_7
    invoke-virtual {p1, v2, p4}, Ld/b/k/t;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/b/q/g;

    move-result-object v3

    goto :goto_5

    .line 13
    :pswitch_8
    new-instance v3, Ld/b/q/l;

    invoke-direct {v3, v2, p4}, Ld/b/q/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 14
    :pswitch_9
    new-instance v3, Ld/b/q/w;

    .line 15
    sget v6, Ld/b/a;->spinnerStyle:I

    invoke-direct {v3, v2, p4, v6}, Ld/b/q/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_5

    .line 16
    :pswitch_a
    new-instance v3, Ld/b/q/k;

    invoke-direct {v3, v2, p4}, Ld/b/q/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 17
    :pswitch_b
    invoke-virtual {p1, v2, p4}, Ld/b/k/t;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/b/q/f;

    move-result-object v3

    goto :goto_5

    .line 18
    :pswitch_c
    new-instance v3, Ld/b/q/n;

    .line 19
    invoke-direct {v3, v2, p4, v0}, Ld/b/q/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_5

    .line 20
    :pswitch_d
    invoke-virtual {p1, v2, p4}, Ld/b/k/t;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/b/q/z;

    move-result-object v3

    :goto_5
    invoke-virtual {p1, v3, p2}, Ld/b/k/t;->h(Landroid/view/View;Ljava/lang/String;)V

    :goto_6
    if-nez v3, :cond_a

    if-eq p3, v2, :cond_a

    const-string p3, "view"

    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p2, "class"

    invoke-interface {p4, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    :try_start_1
    iget-object p3, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object v2, p3, v0

    iget-object p3, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object p4, p3, v5

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v4, p3, :cond_9

    const/4 p3, 0x0

    :goto_7
    sget-object v3, Ld/b/k/t;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge p3, v3, :cond_8

    sget-object v3, Ld/b/k/t;->d:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {p1, v2, p2, v3}, Ld/b/k/t;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_7

    iget-object p1, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    aput-object v1, p1, v5

    goto :goto_8

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_8
    iget-object p1, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    aput-object v1, p1, v5

    goto :goto_9

    :cond_9
    :try_start_2
    invoke-virtual {p1, v2, p2, v1}, Ld/b/k/t;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    aput-object v1, p1, v5

    move-object v1, p2

    goto :goto_9

    :catchall_1
    move-exception p2

    iget-object p1, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    aput-object v1, p1, v5

    throw p2

    :catch_0
    iget-object p1, p1, Ld/b/k/t;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    aput-object v1, p1, v5

    goto :goto_9

    :cond_a
    :goto_8
    move-object v1, v3

    :goto_9
    if-eqz v1, :cond_d

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_d

    invoke-static {v1}, Ld/h/l/p;->E(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_a

    :cond_b
    sget-object p2, Ld/b/k/t;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance p3, Ld/b/k/t$a;

    invoke-direct {p3, v1, p2}, Ld/b/k/t$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d
    :goto_a
    return-object v1

    .line 23
    :cond_e
    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ld/b/k/m;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/b/k/m;->q(Z)Z

    move-result v0

    return v0
.end method

.method public final q(Z)Z
    .locals 12

    iget-boolean v0, p0, Ld/b/k/m;->P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget v0, p0, Ld/b/k/m;->Q:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    .line 2
    :goto_0
    iget-object v2, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Ld/b/k/m;->H(Landroid/content/Context;I)I

    move-result v2

    .line 3
    iget-object v3, p0, Ld/b/k/m;->h:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Ld/b/k/m;->v(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4
    iget-boolean v3, p0, Ld/b/k/m;->T:Z

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-nez v3, :cond_6

    iget-object v3, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_3

    const/high16 v7, 0x100c0000

    goto :goto_1

    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_4

    const/high16 v7, 0xc0000

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Ld/b/k/m;->h:Landroid/content/Context;

    iget-object v10, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v8, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Ld/b/k/m;->S:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v7, "AppCompatDelegate"

    const-string v8, "Exception while getting ActivityInfo"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Ld/b/k/m;->S:Z

    :cond_6
    :goto_3
    iput-boolean v6, p0, Ld/b/k/m;->T:Z

    iget-boolean v3, p0, Ld/b/k/m;->S:Z

    .line 5
    :goto_4
    iget-object v7, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v7, v2, :cond_8

    if-eqz p1, :cond_8

    if-nez v3, :cond_8

    iget-boolean p1, p0, Ld/b/k/m;->M:Z

    if-eqz p1, :cond_8

    sget-boolean p1, Ld/b/k/m;->g0:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Ld/b/k/m;->N:Z

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v8, p1, Landroid/app/Activity;

    if-eqz v8, :cond_8

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Ld/h/d/a;->k(Landroid/app/Activity;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_19

    if-eq v7, v2, :cond_19

    .line 6
    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v2, v8

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    const/16 v9, 0x17

    if-ge v2, v8, :cond_15

    const/16 v8, 0x1c

    if-lt v2, v8, :cond_9

    goto/16 :goto_e

    :cond_9
    const-string v8, "mDrawableCache"

    const-string v10, "ResourcesFlusher"

    if-lt v2, v5, :cond_f

    .line 7
    sget-boolean v2, Ld/b/k/m$i;->h:Z

    if-nez v2, :cond_a

    :try_start_1
    const-class v2, Landroid/content/res/Resources;

    const-string v5, "mResourcesImpl"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld/b/k/m$i;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v5, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    sput-boolean v6, Ld/b/k/m$i;->h:Z

    :cond_a
    sget-object v2, Ld/b/k/m$i;->g:Ljava/lang/reflect/Field;

    if-nez v2, :cond_b

    goto/16 :goto_e

    :cond_b
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    const-string v2, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v10, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v4

    :goto_7
    if-nez p1, :cond_c

    goto/16 :goto_e

    :cond_c
    sget-boolean v2, Ld/b/k/m$i;->b:Z

    if-nez v2, :cond_d

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld/b/k/m$i;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v2

    const-string v5, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    sput-boolean v6, Ld/b/k/m$i;->b:Z

    :cond_d
    sget-object v2, Ld/b/k/m$i;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_e

    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    const-string v2, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v10, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_9
    if-eqz v4, :cond_15

    invoke-static {v4}, Ld/b/k/m$i;->Q(Ljava/lang/Object;)V

    goto :goto_e

    :cond_f
    const-string v5, "Could not retrieve Resources#mDrawableCache field"

    const-string v11, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v2, v9, :cond_13

    .line 8
    sget-boolean v2, Ld/b/k/m$i;->b:Z

    if-nez v2, :cond_10

    :try_start_5
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld/b/k/m$i;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    move-exception v2

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    sput-boolean v6, Ld/b/k/m$i;->b:Z

    :cond_10
    sget-object v2, Ld/b/k/m$i;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_11

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    :catch_6
    move-exception p1

    invoke-static {v10, v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_b
    if-nez v4, :cond_12

    goto :goto_e

    :cond_12
    invoke-static {v4}, Ld/b/k/m$i;->Q(Ljava/lang/Object;)V

    goto :goto_e

    .line 9
    :cond_13
    sget-boolean v2, Ld/b/k/m$i;->b:Z

    if-nez v2, :cond_14

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld/b/k/m$i;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_c

    :catch_7
    move-exception v2

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    sput-boolean v6, Ld/b/k/m$i;->b:Z

    :cond_14
    sget-object v2, Ld/b/k/m$i;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_15

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v4, p1

    goto :goto_d

    :catch_8
    move-exception p1

    invoke-static {v10, v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 10
    :cond_15
    :goto_e
    iget p1, p0, Ld/b/k/m;->R:I

    if-eqz p1, :cond_16

    iget-object v2, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v9, :cond_16

    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v2, p0, Ld/b/k/m;->R:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_16
    if-eqz v3, :cond_1a

    iget-object p1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1a

    check-cast p1, Landroid/app/Activity;

    instance-of v2, p1, Ld/m/h;

    if-eqz v2, :cond_18

    move-object v2, p1

    check-cast v2, Ld/m/h;

    invoke-interface {v2}, Ld/m/h;->b()Ld/m/d;

    move-result-object v2

    check-cast v2, Ld/m/i;

    .line 11
    iget-object v2, v2, Ld/m/i;->b:Ld/m/d$b;

    .line 12
    sget-object v3, Ld/m/d$b;->h:Ld/m/d$b;

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    if-eqz v1, :cond_1a

    goto :goto_f

    .line 14
    :cond_18
    iget-boolean v1, p0, Ld/b/k/m;->O:Z

    if-eqz v1, :cond_1a

    :goto_f
    invoke-virtual {p1, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_10

    :cond_19
    move v6, p1

    :cond_1a
    :goto_10
    if-eqz v6, :cond_1b

    .line 15
    iget-object p1, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, p1, Ld/b/k/j;

    if-eqz v1, :cond_1b

    check-cast p1, Ld/b/k/j;

    invoke-virtual {p1}, Ld/b/k/j;->N()V

    :cond_1b
    if-nez v0, :cond_1c

    .line 16
    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ld/b/k/m;->C(Landroid/content/Context;)Ld/b/k/m$g;

    move-result-object p1

    invoke-virtual {p1}, Ld/b/k/m$g;->e()V

    goto :goto_11

    :cond_1c
    iget-object p1, p0, Ld/b/k/m;->U:Ld/b/k/m$g;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ld/b/k/m$g;->a()V

    :cond_1d
    :goto_11
    const/4 p1, 0x3

    if-ne v0, p1, :cond_1f

    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    if-nez v0, :cond_1e

    new-instance v0, Ld/b/k/m$f;

    invoke-direct {v0, p0, p1}, Ld/b/k/m$f;-><init>(Ld/b/k/m;Landroid/content/Context;)V

    iput-object v0, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    :cond_1e
    iget-object p1, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    .line 18
    invoke-virtual {p1}, Ld/b/k/m$g;->e()V

    goto :goto_12

    :cond_1f
    iget-object p1, p0, Ld/b/k/m;->V:Ld/b/k/m$g;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ld/b/k/m$g;->a()V

    :cond_20
    :goto_12
    return v6
.end method

.method public final r(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Ld/b/k/m$e;

    if-nez v2, :cond_1

    new-instance v1, Ld/b/k/m$e;

    invoke-direct {v1, p0, v0}, Ld/b/k/m$e;-><init>(Ld/b/k/m;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Ld/b/k/m;->f0:[I

    invoke-static {v0, v1, v2}, Ld/b/q/x0;->p(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ld/b/q/x0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/q/x0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1
    :cond_0
    iget-object v0, v0, Ld/b/q/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2
    iput-object p1, p0, Ld/b/k/m;->i:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(ILd/b/k/m$k;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p2, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, Ld/b/k/m$k;->m:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-boolean p2, p0, Ld/b/k/m;->P:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    .line 1
    iget-object p2, p2, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public t(Ld/b/p/i/g;)V
    .locals 2

    iget-boolean v0, p0, Ld/b/k/m;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/k/m;->I:Z

    iget-object v0, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {v0}, Ld/b/q/c0;->l()V

    invoke-virtual {p0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ld/b/k/m;->P:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/b/k/m;->I:Z

    return-void
.end method

.method public u(Ld/b/k/m$k;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Ld/b/k/m$k;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/b/q/c0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {p0, p1}, Ld/b/k/m;->t(Ld/b/p/i/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Ld/b/k/m$k;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Ld/b/k/m$k;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Ld/b/k/m$k;->a:I

    invoke-virtual {p0, p2, p1, v1}, Ld/b/k/m;->s(ILd/b/k/m$k;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Ld/b/k/m$k;->k:Z

    iput-boolean p2, p1, Ld/b/k/m$k;->l:Z

    iput-boolean p2, p1, Ld/b/k/m$k;->m:Z

    iput-object v1, p1, Ld/b/k/m$k;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ld/b/k/m$k;->o:Z

    iget-object p2, p0, Ld/b/k/m;->K:Ld/b/k/m$k;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Ld/b/k/m;->K:Ld/b/k/m$k;

    :cond_2
    return-void
.end method

.method public final v(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public w(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, v0, Ld/h/l/d$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Ld/b/k/s;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {v0, p1}, Ld/h/l/p;->h(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ld/b/k/m;->j:Ld/b/k/m$e;

    .line 3
    iget-object v0, v0, Ld/b/p/h;->e:Landroid/view/Window$Callback;

    .line 4
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, v4}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-boolean v1, v0, Ld/b/k/m$k;->m:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, v0, p1}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 6
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Ld/b/k/m;->L:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 7
    :cond_9
    iget-object v0, p0, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0, v4}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ld/b/q/c0;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {v1}, Ld/b/q/c0;->c()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Ld/b/k/m;->P:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {p1}, Ld/b/q/c0;->f()Z

    move-result p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {p1}, Ld/b/q/c0;->e()Z

    move-result p1

    goto :goto_5

    :cond_c
    iget-boolean v1, v0, Ld/b/k/m$k;->m:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Ld/b/k/m$k;->l:Z

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v1, v0, Ld/b/k/m$k;->k:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Ld/b/k/m$k;->p:Z

    if-eqz v1, :cond_e

    iput-boolean v4, v0, Ld/b/k/m$k;->k:Z

    invoke-virtual {p0, v0, p1}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0, v0, p1}, Ld/b/k/m;->I(Ld/b/k/m$k;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    iget-boolean p1, v0, Ld/b/k/m$k;->m:Z

    invoke-virtual {p0, v0, v2}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    :goto_5
    if-eqz p1, :cond_16

    iget-object p1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 8
    :cond_12
    iget-boolean p1, p0, Ld/b/k/m;->L:Z

    iput-boolean v4, p0, Ld/b/k/m;->L:Z

    invoke-virtual {p0, v4}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-boolean v1, v0, Ld/b/k/m$k;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    invoke-virtual {p0, v0, v2}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    goto :goto_8

    .line 9
    :cond_13
    iget-object p1, p0, Ld/b/k/m;->r:Ld/b/p/a;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ld/b/p/a;->c()V

    goto :goto_6

    .line 10
    :cond_14
    invoke-virtual {p0}, Ld/b/k/m;->F()V

    iget-object p1, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz p1, :cond_15

    .line 11
    invoke-virtual {p1}, Ld/b/k/a;->a()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public x(I)V
    .locals 3

    invoke-virtual {p0, p1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-object v1, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v2, v1}, Ld/b/p/i/g;->w(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Ld/b/k/m$k;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v1}, Ld/b/p/i/g;->z()V

    iget-object v1, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    invoke-virtual {v1}, Ld/b/p/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/b/k/m$k;->p:Z

    iput-boolean v1, v0, Ld/b/k/m$k;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iput-boolean p1, v0, Ld/b/k/m$k;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ld/b/k/m;->K(Ld/b/k/m$k;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Ld/b/k/m;->v:Ld/h/l/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/h/l/s;->b()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 9

    iget-boolean v0, p0, Ld/b/k/m;->x:Z

    if-nez v0, :cond_1a

    .line 1
    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    sget-object v1, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Ld/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19

    sget v1, Ld/b/j;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0x6c

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Ld/b/k/m;->k(I)Z

    goto :goto_0

    :cond_0
    sget v1, Ld/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Ld/b/k/m;->k(I)Z

    :cond_1
    :goto_0
    sget v1, Ld/b/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v5, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Ld/b/k/m;->k(I)Z

    :cond_2
    sget v1, Ld/b/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ld/b/k/m;->k(I)Z

    :cond_3
    sget v1, Ld/b/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ld/b/k/m;->G:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Ld/b/k/m;->A()V

    iget-object v0, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Ld/b/k/m;->H:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Ld/b/k/m;->G:Z

    if-eqz v1, :cond_4

    sget v1, Ld/b/g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v2, p0, Ld/b/k/m;->E:Z

    iput-boolean v2, p0, Ld/b/k/m;->D:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, Ld/b/k/m;->D:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Ld/b/a;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Ld/b/p/c;

    iget-object v7, p0, Ld/b/k/m;->h:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ld/b/g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Ld/b/f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ld/b/q/c0;

    iput-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-virtual {p0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Ld/b/q/c0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Ld/b/k/m;->E:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    invoke-interface {v1, v5}, Ld/b/q/c0;->k(I)V

    :cond_6
    iget-boolean v1, p0, Ld/b/k/m;->B:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ld/b/q/c0;->k(I)V

    :cond_7
    iget-boolean v1, p0, Ld/b/k/m;->C:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    const/4 v5, 0x5

    invoke-interface {v1, v5}, Ld/b/q/c0;->k(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Ld/b/k/m;->F:Z

    if-eqz v1, :cond_a

    sget v1, Ld/b/g;->abc_screen_simple_overlay_action_mode:I

    goto :goto_2

    :cond_a
    sget v1, Ld/b/g;->abc_screen_simple:I

    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_3
    if-eqz v0, :cond_18

    new-instance v1, Ld/b/k/n;

    invoke-direct {v1, p0}, Ld/b/k/n;-><init>(Ld/b/k/m;)V

    invoke-static {v0, v1}, Ld/h/l/p;->i0(Landroid/view/View;Ld/h/l/j;)V

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-nez v1, :cond_c

    sget v1, Ld/b/f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ld/b/k/m;->z:Landroid/widget/TextView;

    :cond_c
    invoke-static {v0}, Ld/b/q/d1;->c(Landroid/view/View;)V

    sget v1, Ld/b/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Ld/b/k/m;->i:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    :goto_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_d
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v8, v5, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v5, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v5, Ld/b/k/p;

    invoke-direct {v5, p0}, Ld/b/k/p;-><init>(Ld/b/k/m;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 2
    iput-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, Ld/b/k/m;->g:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_f
    iget-object v0, p0, Ld/b/k/m;->n:Ljava/lang/CharSequence;

    .line 4
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Ld/b/k/m;->o:Ld/b/q/c0;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ld/b/q/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 5
    :cond_10
    iget-object v1, p0, Ld/b/k/m;->l:Ld/b/k/a;

    if-eqz v1, :cond_11

    .line 6
    invoke-virtual {v1, v0}, Ld/b/k/a;->l(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    iget-object v1, p0, Ld/b/k/m;->z:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_12
    :goto_6
    iget-object v0, p0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 8
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0}, Ld/h/l/p;->I(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9
    :cond_13
    iget-object v1, p0, Ld/b/k/m;->h:Landroid/content/Context;

    sget-object v5, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v5, Ld/b/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Ld/b/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_14

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_14
    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 10
    iput-boolean v4, p0, Ld/b/k/m;->x:Z

    invoke-virtual {p0, v2}, Ld/b/k/m;->D(I)Ld/b/k/m$k;

    move-result-object v0

    iget-boolean v1, p0, Ld/b/k/m;->P:Z

    if-nez v1, :cond_1a

    iget-object v0, v0, Ld/b/k/m$k;->h:Ld/b/p/i/g;

    if-nez v0, :cond_1a

    invoke-virtual {p0, v3}, Ld/b/k/m;->G(I)V

    goto :goto_7

    .line 11
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ld/b/k/m;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/m;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/m;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/m;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/m;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_7
    return-void
.end method
