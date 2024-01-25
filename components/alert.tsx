import Container from "./container";
import cn from "classnames";

type Props = {
    isAvailable?: boolean;
};

const Alert = ({ isAvailable }: Props) => {
  return (
    <div
      className={cn("border-b", {
        "bg-neutral-800 border-neutral-800 text-white": isAvailable,
        "bg-neutral-50 border-neutral-200": !isAvailable,
      })}
    >
      <Container>
        <div className="py-2 text-center text-sm">
          {isAvailable ? (
            <>
              Actually available for work!
            </>
          ) : (
            <>
            </>
          )}
        </div>
      </Container>
    </div>
  );
};

export default Alert;
