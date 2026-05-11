.class public final Ld/b/q/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Ld/b/q/j;


# instance fields
.field public a:Ld/b/q/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Ld/b/q/j;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ld/b/q/j;
    .locals 2

    const-class v0, Ld/b/q/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/b/q/j;->c:Ld/b/q/j;

    if-nez v1, :cond_0

    invoke-static {}, Ld/b/q/j;->e()V

    :cond_0
    sget-object v1, Ld/b/q/j;->c:Ld/b/q/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Ld/b/q/j;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Ld/b/q/n0;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e()V
    .locals 3

    const-class v0, Ld/b/q/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/b/q/j;->c:Ld/b/q/j;

    if-nez v1, :cond_0

    new-instance v1, Ld/b/q/j;

    invoke-direct {v1}, Ld/b/q/j;-><init>()V

    sput-object v1, Ld/b/q/j;->c:Ld/b/q/j;

    invoke-static {}, Ld/b/q/n0;->d()Ld/b/q/n0;

    move-result-object v2

    iput-object v2, v1, Ld/b/q/j;->a:Ld/b/q/n0;

    sget-object v1, Ld/b/q/j;->c:Ld/b/q/j;

    iget-object v1, v1, Ld/b/q/j;->a:Ld/b/q/n0;

    new-instance v2, Ld/b/q/j$a;

    invoke-direct {v2}, Ld/b/q/j$a;-><init>()V

    .line 1
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v1, Ld/b/q/n0;->g:Ld/b/q/n0$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(Landroid/graphics/drawable/Drawable;Ld/b/q/v0;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld/b/q/n0;->l(Landroid/graphics/drawable/Drawable;Ld/b/q/v0;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/b/q/j;->a:Ld/b/q/n0;

    invoke-virtual {v0, p1, p2}, Ld/b/q/n0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/b/q/j;->a:Ld/b/q/n0;

    invoke-virtual {v0, p1, p2}, Ld/b/q/n0;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
