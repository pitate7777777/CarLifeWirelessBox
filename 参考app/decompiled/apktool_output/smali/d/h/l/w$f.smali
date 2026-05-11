.class public Ld/h/l/w$f;
.super Ld/h/l/w$k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static h:Z = false

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static l:Ljava/lang/reflect/Field;

.field public static m:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Ld/h/f/b;

.field public e:Ld/h/f/b;

.field public f:Ld/h/l/w;

.field public g:Ld/h/f/b;


# direct methods
.method public constructor <init>(Ld/h/l/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/h/l/w$k;-><init>(Ld/h/l/w;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/h/l/w$f;->e:Ld/h/f/b;

    iput-object p2, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    sget-boolean v0, Ld/h/l/w$f;->h:Z

    const/4 v1, 0x0

    const-string v2, "Failed to get visible insets. (Reflection error). "

    const-string v3, "WindowInsetsCompat"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v4, Landroid/view/View;

    const-string v5, "getViewRootImpl"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ld/h/l/w$f;->i:Ljava/lang/reflect/Method;

    const-string v4, "android.view.ViewRootImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ld/h/l/w$f;->j:Ljava/lang/Class;

    const-string v4, "android.view.View$AttachInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ld/h/l/w$f;->k:Ljava/lang/Class;

    const-string v5, "mVisibleInsets"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Ld/h/l/w$f;->l:Ljava/lang/reflect/Field;

    sget-object v4, Ld/h/l/w$f;->j:Ljava/lang/Class;

    const-string v5, "mAttachInfo"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Ld/h/l/w$f;->m:Ljava/lang/reflect/Field;

    sget-object v4, Ld/h/l/w$f;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v4, Ld/h/l/w$f;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, Ld/h/l/w$f;->h:Z

    .line 3
    :cond_0
    sget-object v0, Ld/h/l/w$f;->i:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    sget-object v5, Ld/h/l/w$f;->k:Ljava/lang/Class;

    if-eqz v5, :cond_3

    sget-object v5, Ld/h/l/w$f;->l:Ljava/lang/reflect/Field;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v3, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    sget-object v0, Ld/h/l/w$f;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ld/h/l/w$f;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v5, p1}, Ld/h/f/b;->a(IIII)Ld/h/f/b;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5
    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 6
    sget-object v4, Ld/h/f/b;->e:Ld/h/f/b;

    .line 7
    :cond_4
    iput-object v4, p0, Ld/h/l/w$f;->g:Ld/h/f/b;

    return-void

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ld/h/l/w$k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ld/h/l/w$f;

    iget-object v0, p0, Ld/h/l/w$f;->g:Ld/h/f/b;

    iget-object p1, p1, Ld/h/l/w$f;->g:Ld/h/f/b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Ld/h/f/b;
    .locals 4

    iget-object v0, p0, Ld/h/l/w$f;->e:Ld/h/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ld/h/f/b;->a(IIII)Ld/h/f/b;

    move-result-object v0

    iput-object v0, p0, Ld/h/l/w$f;->e:Ld/h/f/b;

    :cond_0
    iget-object v0, p0, Ld/h/l/w$f;->e:Ld/h/f/b;

    return-object v0
.end method

.method public i(IIII)Ld/h/l/w;
    .locals 3

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld/h/l/w;->i(Landroid/view/WindowInsets;)Ld/h/l/w;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, Ld/h/l/w$d;

    invoke-direct {v1, v0}, Ld/h/l/w$d;-><init>(Ld/h/l/w;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    new-instance v1, Ld/h/l/w$c;

    invoke-direct {v1, v0}, Ld/h/l/w$c;-><init>(Ld/h/l/w;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ld/h/l/w$b;

    invoke-direct {v1, v0}, Ld/h/l/w$b;-><init>(Ld/h/l/w;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ld/h/l/w$f;->h()Ld/h/f/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Ld/h/l/w;->e(Ld/h/f/b;IIII)Ld/h/f/b;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ld/h/l/w$e;->c(Ld/h/f/b;)V

    .line 4
    invoke-virtual {p0}, Ld/h/l/w$k;->g()Ld/h/f/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Ld/h/l/w;->e(Ld/h/f/b;IIII)Ld/h/f/b;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Ld/h/l/w$e;->b(Ld/h/f/b;)V

    .line 6
    invoke-virtual {v1}, Ld/h/l/w$e;->a()Ld/h/l/w;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public l([Ld/h/f/b;)V
    .locals 0

    iput-object p1, p0, Ld/h/l/w$f;->d:[Ld/h/f/b;

    return-void
.end method

.method public m(Ld/h/l/w;)V
    .locals 0

    iput-object p1, p0, Ld/h/l/w$f;->f:Ld/h/l/w;

    return-void
.end method
