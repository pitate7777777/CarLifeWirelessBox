.class public final Le/d/a/j/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Le/d/a/j/i;

.field public final synthetic f:Le/d/a/i/c;

.field public final synthetic g:Z

.field public final synthetic h:Le/d/a/j/b;

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/d/a/j/i;Le/d/a/i/c;ZLe/d/a/j/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/d/a/j/f;->e:Le/d/a/j/i;

    iput-object p2, p0, Le/d/a/j/f;->f:Le/d/a/i/c;

    iput-boolean p3, p0, Le/d/a/j/f;->g:Z

    iput-object p4, p0, Le/d/a/j/f;->h:Le/d/a/j/b;

    iput-object p5, p0, Le/d/a/j/f;->i:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Le/d/a/j/f;->f:Le/d/a/i/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean p1, p0, Le/d/a/j/f;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/d/a/j/f;->h:Le/d/a/j/b;

    iget-object v0, p0, Le/d/a/j/f;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Le/d/a/j/b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/d/a/j/f;->e:Le/d/a/j/i;

    iget-object v0, p0, Le/d/a/j/f;->i:Ljava/util/List;

    .line 1
    iget-object v1, p1, Le/d/a/j/i;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p1, Le/d/a/j/i;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Le/d/a/j/i;->a:Ld/k/d/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, Le/d/a/j/i;->c()Le/d/a/j/e;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->C0(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    const-string p1, "activity"

    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v2
.end method
