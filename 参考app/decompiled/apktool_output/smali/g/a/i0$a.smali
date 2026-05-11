.class public final Lg/a/i0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/k/f$b<",
        "Lg/a/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:Lg/a/i0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/i0$a;

    invoke-direct {v0}, Lg/a/i0$a;-><init>()V

    sput-object v0, Lg/a/i0$a;->e:Lg/a/i0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
