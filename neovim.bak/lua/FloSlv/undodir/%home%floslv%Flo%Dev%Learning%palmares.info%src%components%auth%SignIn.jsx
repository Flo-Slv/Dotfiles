Vim�UnDo� ~�;�p��u� ��Q���?@[Tx�V�AA*@      6  const callbackUrl = searchParams.get("callbackUrl");      5      2       2   2   2    c���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c�B     �         	      !export const  = (props : {}) => {�                 			�                 export const �                   5��                                                  �                                                �                                                �                                                �                                                �                                                �                                                  �                                          (       �                        (               *       �                          R                       �                        R                      �                         (                      5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             c�B      �         	      'export const SignIn = (props : {}) => {5��                         8                      �                         7                      �                         6                      �                         5                      �                         1                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�B"     �         	      export const SignIn =  => {5��                         1                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�B$     �                 import React from 'react'5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�B%     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�B(    �                 		return (   		<div>   			   		</div>   	)   }5��                              #              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�B/     �              �             5��                                           =       5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             c�B/     �             5��                          =                      5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             c�B1     �                <import { redirect, useSearchParams } from "next/navigation";5��                                                5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             c�B8     �             �             5��                          ,               <       5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             c�B=     �               ;import { unstable_getServerSession } from "next-auth/next";    �                �             5��                          h                      �                          h                      �                          h                      �       ;                  g                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�BB     �                 +import { redirect } from "next/navigation";   ;import { unstable_getServerSession } from "next-auth/next";5��                                   h               5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�BB     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�BY     �              �             5��                                           &       5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�BZ     �             5��                          &                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B]     �             �             5��                          &               1       5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B^     �             5��                          &                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �             �             5��                          w               a       5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �      	   	    5��                          �                      �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �         
    �         
    5��                          &               =       5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �                 <import { redirect, useSearchParams } from "next/navigation";�               <import { redirect, useSearchParams } from "next/navigation";�              5��                         &       =               5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �                <import { redirect, useSearchParams } from "next/navigation";5��                                                �                                                �                                                �        
                  
                      �        	                  	                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �   	              return <div></div>;5��    	                                          �    	                                          �    	                                          �    	                                          �    	   
                                       �    	   	                                       �    	   	                                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �   
            		�   
          5��    
                                           �    
                                         5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �             �             5��                                        d      5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �   
             		p5��    
                                           5�_�                   
   	    ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �   	            	  return 5��    	   	                                       5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�     �   
          �   	              return ()5��    	   
                                      �    
                                         �    
                                           �    
                                          �    
                                           5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       c�B�     �                G    <main className="flex flex-col justify-center items-center h-full">         <h1>SIGN IN</h1>             <div className="mt-16">           <Button             variant="outline"   ;          onClick={() => signIn("google", { callbackUrl })}   	        >   ,          <LogIn className="mr-2 h-4 w-4" />             Login with Google           </Button>         </div>       </main>�         (      G    <main className="flex flex-col justify-center items-center h-full">         <h1>SIGN IN</h1>             <div className="mt-16">           <Button             variant="outline"   ;          onClick={() => signIn("google", { callbackUrl })}   	        >   ,          <LogIn className="mr-2 h-4 w-4" />             Login with Google           </Button>         </div>       </main>�             5��                              d            �                                             �                         ^                    �                         s                    �                         �                    �               
          �      
              �               
          �      
              �                         �                    �               
          �      
              �               
                
              �                         -                    �                         ;                    �                         E                    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       c�B�     �   
             E		<main className="flex flex-col justify-center items-center h-full">   			<h1>SIGN IN</h1>       			<div className="mt-16">   				<Button   					variant="outline"   6					onClick={() => signIn("google", { callbackUrl })}   				>   '					<LogIn className="mr-2 h-4 w-4" />   					Login with Google   				</Button>   				</div>   			</main>�         (      E		<main className="flex flex-col justify-center items-center h-full">   			<h1>SIGN IN</h1>       			<div className="mt-16">   				<Button   					variant="outline"   6					onClick={() => signIn("google", { callbackUrl })}   				>   '					<LogIn className="mr-2 h-4 w-4" />   					Login with Google   				</Button>   				</div>   			</main>�   
          5��                 
             7            �                         ]                    �                         �                    5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                V       c�B�     �                 5��                          N                     5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                V       c�B�    �   
            E		<main className="flex flex-col justify-center items-center h-full">   		<h1>SIGN IN</h1>       			<div className="mt-16">   				<Button   					variant="outline"   6					onClick={() => signIn("google", { callbackUrl })}   					>   '					<LogIn className="mr-2 h-4 w-4" />   					Login with Google   				</Button>   				</div>   			</main>   		)   	;5��    
                         <      g      5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                V       c�B�     �               export const SignIn = () => {5��                         �                      �                          �                      5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                V       c�B�     �                  �               5��                          |                     �                          |                     �                          }                     5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                V       c�C     �             �             5��                          3               *       5�_�   $   &           %      7    ����                                                                                                                                                                                                                                                                                                                                                V       c�C*    �               ;          onClick={() => signIn("google", { callbackUrl })}5��       7                                       �       7                                       5�_�   %   '           &      4    ����                                                                                                                                                                                                                                                                                                                                                V       c�C2    �                  2import { useSearchParams } from "next/navigation";   )import { signIn } from "next-auth/react";   %import { LogIn } from "lucide-react";       0import { Button } from "@/components/ui/Button";       const SignIn = () => {   )  const searchParams = useSearchParams();   6  const callbackUrl = searchParams.get("callbackUrl");       
  return (   G    <main className="flex flex-col justify-center items-center h-full">         <h1>SIGN IN</h1>             <div className="mt-16">           <Button             variant="outline"   ;          onClick={() => signIn("google", { callbackUrl })}   	        >   ,          <LogIn className="mr-2 h-4 w-4" />             Login with Google           </Button>         </div>       </main>     );   };       export default SignIn;5�5�_�   &   (           '      	    ����                                                                                                                                                                                                                                                                                                                                                V       c�CZ     �              5��                                                  5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                V       c�C[     �                 5��                                                  5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                V       c�C[     �                ""5��                       
                  
       �        
                  
                      �        	                  	                      �                                              5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                V       c�C^     �                "use client"5��                                                5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                V       c�C_    �             5��                                                5�_�   +   /           ,           ����                                                                                                                                                                                                                                                                                                                                                V       c�C~   	 �             5��                          l                      5�_�   ,   0   -       /      5    ����                                                                                                                                                                                                                                                                                                                                                V       c�Qv     �               6  const callbackUrl = searchParams.get("callbackUrl");5��       5                  <                     5�_�   /   1           0      9    ����                                                                                                                                                                                                                                                                                                                                                V       c�Qx   
 �               :  const callbackUrl = searchParams.get("callbackUrl") || ;5��       9                  @                     5�_�   0   2           1      :    ����                                                                                                                                                                                                                                                                                                                                                V       cѓ�    �               <  const callbackUrl = searchParams.get("callbackUrl") || "";5��       :               
   A              
       5�_�   1               2      ;    ����                                                                                                                                                                                                                                                                                                                                                             c���    �               F  const callbackUrl = searchParams.get("callbackUrl") || "/dashboard";5��       ;                  B                     5�_�   ,   .       /   -      7    ����                                                                                                                                                                                                                                                                                                                                                V       c�Ql     �               ?          onClick={() => signIn("google", { callbackUrl ||  })}5��       7                  +                     5�_�   -               .      ;    ����                                                                                                                                                                                                                                                                                                                                                V       c�Qm     �               A          onClick={() => signIn("google", { callbackUrl || "" })}5��       ;                  /                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          :       V   :    c�B�    �   	            	  return;   E  <main className="flex flex-col justify-center items-center h-full">       <h1>SIGN IN</h1>           <div className="mt-16">         <Button           variant="outline"   9        onClick={() => signIn("google", { callbackUrl })}         >   *        <LogIn className="mr-2 h-4 w-4" />           Login with Google         </Button>   
    </div>   
  </main>;5��    	               	         g      M      5��