import { test } from '@playwright/test';

/**
 * Decorator to wrap a method inside a Playwright test.step.
 * @param stepName - Optional custom name for the step. Defaults to ClassName.methodName.
 * @returns Decorator function
 */
export function step(stepName?: string) {
    return function <This, Args extends any[], R>(
        originalMethod: (this: This, ...args: Args) => Promise<R>,
        context: ClassMethodDecoratorContext<This, (this: This, ...args: Args) => Promise<R>>
    ) {
        if (context.kind !== 'method') {
            throw new TypeError('@step can be used only on class methods');
        }

        return function (this: This, ...args: Args): Promise<R> {
            const className = (this as any)?.constructor?.name ?? 'Object';

            const name = stepName ?? `${className}.${String(context.name)}`;
            return test.step(name, async () => await originalMethod.apply(this, args), { box: true });
        };
    };
}
