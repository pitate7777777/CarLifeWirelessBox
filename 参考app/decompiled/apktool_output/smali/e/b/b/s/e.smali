.class public Le/b/b/s/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static e:Le/b/b/s/e;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/b/s/e;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Le/b/b/s/e;->b:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Le/b/b/s/e;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Le/b/b/s/e;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized a()Le/b/b/s/e;
    .locals 2

    const-class v0, Le/b/b/s/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/b/b/s/e;->e:Le/b/b/s/e;

    if-nez v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Le/b/b/s/e;->e:Le/b/b/s/e;

    if-nez v1, :cond_0

    new-instance v1, Le/b/b/s/e;

    invoke-direct {v1}, Le/b/b/s/e;-><init>()V

    sput-object v1, Le/b/b/s/e;->e:Le/b/b/s/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v1, Le/b/b/s/e;->e:Le/b/b/s/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Le/b/b/s/e;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Le/b/b/s/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
