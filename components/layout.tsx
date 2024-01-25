import Alert from "./alert";
import Footer from "./footer";
import Meta from "./meta";

type Props = {
  isAvailable?: boolean;
  children: React.ReactNode;
};

const Layout = ({ isAvailable, children }: Props) => {
  return (
    <>
      <Meta />
      <div className="min-h-screen">
        {isAvailable &&  <Alert isAvailable={isAvailable} />}
        <main>{children}</main>
      </div>
      <Footer />
    </>
  );
};

export default Layout;
