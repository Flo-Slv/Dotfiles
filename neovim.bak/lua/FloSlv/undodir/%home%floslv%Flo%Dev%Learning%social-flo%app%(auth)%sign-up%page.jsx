Vim�UnDo� ��ʛR�������m�0�2�*c8j	�u��b�7   c   !    fetch("/api/users/sign-up", {   "                          c���   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             c��.     �         v    �         v    5��                          H              0       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c��/     �         w      /import '../../../styles/frontend/sign-in.scss';5��                               0       3       5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                             c��1     �         w      /import '../../../styles/frontend/sign-in.scss';5��       )                  t                     5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             c��2    �       i   w   t   'use client';       ,import { useRouter } from 'next/navigation';   import Link from 'next/link';   -import { useContext, useState } from 'react';   "import validator from 'validator';       import Image from 'next/image';       Iimport { ThemeContext } from '../../../context/theme/theme-provider.jsx';       2// import '../../../styles/frontend/sign-in.scss';   .import '../../../styles/frontend/sign-in.css';       9import lightTheme from '../../../public/light-theme.png';   7import darkTheme from '../../../public/dark-theme.png';       const SignUp = () => {   3	const { dark, toggle } = useContext(ThemeContext);       (	const [error, setError] = useState('');       	const router = useRouter();       	const handleSubmit = e => {   		e.preventDefault();       *		const formData = new FormData(e.target);       		const data = {   2			email: validator.escape(formData.get('email')),   8			password: validator.escape(formData.get('password')),   G			confirm_password: validator.escape(formData.get('confirm_password'))   		};       		// Try to create an account.   		fetch('/api/users/sign-up', {   			body: JSON.stringify(data),   3			headers: { 'Content-Type': 'application/json' },   			method: 'POST'   		})   			.then(res => res.json())   			.then(res => {   				if (res.error) {   					setError(res.error);   					return null;   				}       				// Redirect to login if ok.   4				// See if we can pass a message to this new page   ;				// like 'User successfully created, you can now log in'   				router.push('/sign-in');   			});   	};       		return (   @		<div className={`login ${dark ? 'dark-mode' : 'light-mode'}`}>   			<h1>Sign up</h1>       6			<form onSubmit={handleSubmit} autoComplete={'off'}>   
				<input   					type='email'   					name='email'   					placeholder='Email'   					required   				/>       
				<input   					type='password'   					name='password'   					placeholder='Password'   					minLength='10'   					required   				/>       
				<input   					type='password'   					name='confirm_password'   #					placeholder='Confirm password'   					minLength='10'   					required   				/>       4				<button type='submit'>Create an account</button>       
			</form>       			{error && (   				<div>{error}</div>   			)}       $			<div className={'login-buttons'}>   				<button>   					<Link href='/sign-in'>   						Sign-in   					</Link>   				</button>       				<button>   					<Link href='/'>   						Back to home   					</Link>   				</button>   				</div>       "			<div className={'login-image'}>   
				<Image   5					src={`${dark ? lightTheme.src : darkTheme.src}`}   2					alt={`${dark ? 'Dark' : 'Light'} theme icon`}   					onClick={() => toggle()}   					width={50}   					height={50}   				/>   				</div>   		</div>   	)5��            s      g              �	      s
      5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             c���     �                .import "../../../styles/frontend/sign-in.css";5��                          K      /               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             c���     �         j      2// import '../../../styles/frontend/sign-in.scss';5��                               3       0       5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                                                             c���    �         j      /import '../../../styles/frontend/sign-in.scss';5��              '       '         '       '       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             c�Q     �                )  const [error, setError] = useState("");5��                          	      *               5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             c�T     �         i      -import { useContext, useState } from "react";5��                         o                      �                         n                      �                         m                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�X     �                 5��                          �                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             c�^     �         h          const data = {5��       
                 �                    �                         �                     �                        �                    5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             c�d    �   "   $   h      !      body: JSON.stringify(data),5��    "                    �                    �    "                    �                    �    "                    �                    �    "                    �                    5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             c�l     �   )   *                    setError(res.error);5��    )                      p                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             c�l     �   )   *                    return null;5��    )                      p                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             c�m     �   )   *          	        }5��    )                      p      
               5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                             c�n     �   (   *   e              if (res.error) {5��    (                    n                    �    (                    r                    5�_�                    )   &    ����                                                                                                                                                                                                                                                                                                                                                             c�s     �   (   *   e      &        if (res.error) throw new Error5��    (   &                  }                     5�_�                    )   '    ����                                                                                                                                                                                                                                                                                                                                                             c�u     �   (   *   e      (        if (res.error) throw new Error()5��    (   '                  ~                     5�_�                    )   +    ����                                                                                                                                                                                                                                                                                                                                                             c�u     �   (   *   e      ,        if (res.error) throw new Error(res.)5��    (   +                  �                     5�_�                    )   1    ����                                                                                                                                                                                                                                                                                                                                                             c�w    �   (   *   e      1        if (res.error) throw new Error(res.error)5��    (   1                  �                     5�_�                    L       ����                                                                                                                                                                                                                                                                                                                                                             c�~     �   K   L          #      {error && <div>{error}</div>}5��    K                      �      $               5�_�                    K        ����                                                                                                                                                                                                                                                                                                                                                             c�~    �   J   K           5��    J                      �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��     �                #import { useContext } from "react";�         d      #import { useContext } from "react";�         c    5��                        Z       $       <       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��    �                #import { useContext } from "react";�         d      #import { useContext } from "react";�         c    5��                        <       $              5�_�                    
   <    ����                                                                                                                                                                                                                                                                                                                                                             c�G     �   	      c      Iimport { ThemeContext } from "../../../context/theme/theme-provider.jsx";5��    	   :                 �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             c�J     �         c      /import "../../../styles/frontend/sign-in.scss";5��       %                 2                    5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                             c�L     �         c      9import lightTheme from "../../../public/light-theme.png";5��       -                 j                    5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             c�N    �         c      7import darkTheme from "../../../public/dark-theme.png";5��       +                 �                    5�_�                     "       ����                                                                                                                                                                                                                                                                                                                                                             c���   	 �   !   #   c      !    fetch("/api/users/sign-up", {5��    !                    �                    5�_�             	              ����                                                                                                                                                                                                                                                                                                                                                             c���    �         j      /import "../../../styles/frontend/sign-in.scss";5��              '       '         '       '       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c���     �         j      3ijjjjmport "../../../styles/frontend/sign-in.scss";5��                                              5��