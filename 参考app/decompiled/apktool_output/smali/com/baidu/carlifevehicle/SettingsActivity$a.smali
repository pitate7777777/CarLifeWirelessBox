.class public final Lcom/baidu/carlifevehicle/SettingsActivity$a;
.super Ld/p/f;
.source ""

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlifevehicle/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/p/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "preference"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newValue "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1920x1080"

    invoke-static {p2, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x1e

    const-string v1, "activity!!"

    if-eqz p1, :cond_0

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    new-instance p2, Le/b/a/a/q/e/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v2

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x780

    const/16 v3, 0x438

    invoke-direct {p2, v2, v1, v3, v0}, Le/b/a/a/q/e/a;-><init>(Landroid/content/Context;III)V

    goto :goto_0

    :cond_0
    const-string p1, "1280x720"

    invoke-static {p2, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v2, 0x500

    if-eqz p1, :cond_1

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    new-instance p2, Le/b/a/a/q/e/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v3

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2d0

    invoke-direct {p2, v3, v2, v1, v0}, Le/b/a/a/q/e/a;-><init>(Landroid/content/Context;III)V

    goto :goto_0

    :cond_1
    const-string p1, "1024x576"

    invoke-static {p2, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    new-instance p2, Le/b/a/a/q/e/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v2

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x400

    const/16 v3, 0x240

    invoke-direct {p2, v2, v1, v3, v0}, Le/b/a/a/q/e/a;-><init>(Landroid/content/Context;III)V

    goto :goto_0

    :cond_2
    const-string p1, "1280x480"

    invoke-static {p2, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    new-instance p2, Le/b/a/a/q/e/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v3

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1e0

    invoke-direct {p2, v3, v2, v1, v0}, Le/b/a/a/q/e/a;-><init>(Landroid/content/Context;III)V

    :goto_0
    check-cast p1, Le/b/a/a/p/h;

    invoke-virtual {p1, p2}, Le/b/a/a/p/h;->w(Le/b/a/a/q/e/a;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
