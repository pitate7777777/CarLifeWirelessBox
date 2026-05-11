.class public Ld/p/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/p/j$b;,
        Ld/p/j$a;,
        Ld/p/j$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:J

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Landroidx/preference/PreferenceScreen;

.field public i:Ld/p/j$c;

.field public j:Ld/p/j$a;

.field public k:Ld/p/j$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/p/j;->b:J

    const/4 v0, 0x0

    iput v0, p0, Ld/p/j;->g:I

    iput-object p1, p0, Ld/p/j;->a:Landroid/content/Context;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Ld/p/j;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ld/p/j;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-boolean v0, p0, Ld/p/j;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/p/j;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld/p/j;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ld/p/j;->d:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Ld/p/j;->d:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ld/p/j;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Ld/p/j;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    iget v0, p0, Ld/p/j;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ld/p/j;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/p/j;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/h/e/a;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ld/p/j;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ld/p/j;->c:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Ld/p/j;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method
