.class public final Le/b/a/a/r/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lf/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Le/b/a/a/r/e$a;->e:Le/b/a/a/r/e$a;

    invoke-static {v0}, Ld/b/k/m$i;->C0(Lf/m/a/a;)Lf/a;

    move-result-object v0

    sput-object v0, Le/b/a/a/r/e;->a:Lf/a;

    return-void
.end method

.method public static final a()I
    .locals 1

    sget-object v0, Le/b/a/a/r/e;->a:Lf/a;

    invoke-interface {v0}, Lf/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
