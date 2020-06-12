package com.model2.mvc.common.aspect;

import org.aspectj.lang.ProceedingJoinPoint;

/*
 * FileName : PojoAspectJ.java
 *	:: XML 에 선언적으로 aspect 의 적용   
  */
public class LogAspectJ {

	///Constructor
	public LogAspectJ() {
		System.out.println("\nCommon :: "+this.getClass()+"\n");
	}
	
	//Around  Advice
	public Object invoke(ProceedingJoinPoint joinPoint) throws Throwable {
			
		System.out.println("");
		System.out.println("[Around before] 타겍객체.메서드 :"+
													joinPoint.getTarget().getClass().getName() +"."+  //ProceedingJoinPoint 인터페이스의 getTarget 메서드:대상객체를 구한다
													joinPoint.getSignature().getName());  //ProceedingJoinPoint 인터페이스의 getSignature 메서드: 호출되는 메서드의 정보를 구한다
															// ㄴ org.aspectj.lang.Signiture 인터페이스의 getName 메서드: 메서드의 이름을 구한다
		if(joinPoint.getArgs().length !=0){
			System.out.println("[Around before]method에 전달되는 인자 : "+ joinPoint.getArgs()[0]);
		}
		//==> 타겟 객체의 Method 를 호출 하는 부분 
		Object obj = joinPoint.proceed();

		System.out.println("[Around after] 타겟 객체return value  : "+obj);
		System.out.println("");
		
		return obj;
	}
	
}//end of class