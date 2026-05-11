.class public final Ld/r/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/r/a$b;,
        Ld/r/a$a;
    }
.end annotation


# instance fields
.field public a:Ld/c/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/c/a/b/b<",
            "Ljava/lang/String;",
            "Ld/r/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Bundle;

.field public c:Z

.field public d:Landroidx/savedstate/Recreator$a;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/c/a/b/b;

    invoke-direct {v0}, Ld/c/a/b/b;-><init>()V

    iput-object v0, p0, Ld/r/a;->a:Ld/c/a/b/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/r/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ld/r/a$a;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ld/r/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/r/a;->d:Landroidx/savedstate/Recreator$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/savedstate/Recreator$a;

    invoke-direct {v0, p0}, Landroidx/savedstate/Recreator$a;-><init>(Ld/r/a;)V

    iput-object v0, p0, Ld/r/a;->d:Landroidx/savedstate/Recreator$a;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Ld/r/a;->d:Landroidx/savedstate/Recreator$a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v0, v0, Landroidx/savedstate/Recreator$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class"

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
