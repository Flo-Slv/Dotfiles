Vim�UnDo� �=x�FGb6lq[A뒕#U�X�7_���`Ӕ?g                                      c�fm    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c��     �                   �               5��                    	                      �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       c��     �                declare global {   &  var prisma: PrismaClient | undefined   }5��                          /       :               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       c��     �                 5��                          .                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       c��    �                  -import { PrismaClient } from "@prisma/client"       6const client = globalThis.prisma || new PrismaClient()   Eif (process.env.NODE_ENV !== "production") globalThis.prisma = client       export default client5��        -               -       �       �       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             c�fl    �                  .import { PrismaClient } from "@prisma/client";       7const client = globalThis.prisma || new PrismaClient();   Fif (process.env.NODE_ENV !== "production") globalThis.prisma = client;       export default client;5�5��