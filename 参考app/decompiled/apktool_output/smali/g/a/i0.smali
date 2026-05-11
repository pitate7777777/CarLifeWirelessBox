.class public interface abstract Lg/a/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/i0$a;
    }
.end annotation


# static fields
.field public static final d:Lg/a/i0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/a/i0$a;->e:Lg/a/i0$a;

    sput-object v0, Lg/a/i0;->d:Lg/a/i0$a;

    return-void
.end method


# virtual methods
.method public abstract c()Z
.end method

.method public abstract i(ZZLf/m/a/b;)Lg/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lf/m/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lf/h;",
            ">;)",
            "Lg/a/v;"
        }
    .end annotation
.end method

.method public abstract j()Ljava/util/concurrent/CancellationException;
.end method
