Vim�UnDo� �ҟ^����D���m�2f'6��!Q�I��bP��   7                                   c�G�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c�G�     �                   �               5��                    7                       �      5�_�                    8        ����                                                                                                                                                                                                                                                                                                                                                             c�G�     �   7   8           5��    7                      �                     5�_�                     7        ����                                                                                                                                                                                                                                                                                                                                                             c�G�    �               7   "use client"       import * as React from "react"   5import * as TabsPrimivite from "@radix-ui/react-tabs"        import { cn } from "@/lib/utils"       const Tabs = TabsPrimivite.Root       "const TabsList = React.forwardRef<   .  React.ElementRef<typeof TabsPrimivite.List>,   ;  React.ComponentPropsWithoutRef<typeof TabsPrimivite.List>   %>(({ className, ...props }, ref) => (     <TabsPrimivite.List       ref={ref}       className={cn(   ^      "inline-flex items-center justify-center rounded-md bg-slate-100 p-1 dark:bg-slate-800",         className       )}       {...props}     />   ))   5TabsList.displayName = TabsPrimivite.List.displayName       %const TabsTrigger = React.forwardRef<   1  React.ElementRef<typeof TabsPrimivite.Trigger>,   >  React.ComponentPropsWithoutRef<typeof TabsPrimivite.Trigger>   %>(({ className, ...props }, ref) => (     <TabsPrimivite.Trigger       className={cn(  Z      "inline-flex min-w-[100px] items-center justify-center rounded-[0.185rem] px-3 py-1.5  text-sm font-medium text-slate-700 transition-all  disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-white data-[state=active]:text-slate-900 data-[state=active]:shadow-sm dark:text-slate-200 dark:data-[state=active]:bg-slate-900",         className       )}       {...props}       ref={ref}     />   ))   ;TabsTrigger.displayName = TabsPrimivite.Trigger.displayName       %const TabsContent = React.forwardRef<   1  React.ElementRef<typeof TabsPrimivite.Content>,   >  React.ComponentPropsWithoutRef<typeof TabsPrimivite.Content>   %>(({ className, ...props }, ref) => (     <TabsPrimivite.Content       className={cn(   J      "mt-2 rounded-md border border-slate-200 p-6 dark:border-slate-700",         className       )}       {...props}       ref={ref}     />   ))   ;TabsContent.displayName = TabsPrimivite.Content.displayName       3export { Tabs, TabsList, TabsTrigger, TabsContent }5��           6   3   6   4          �      �      5��