import unittest
import solv_square_equation

class TestSolvSquare(unittest.TestCase):
    #test Discriminant
    def test_discriminant_more(self):
        self.assertEqual(solv_square_equation.discriminant(-3,-2,1), 16)
    def test_discriminant_null(self):
        self.assertEqual(solv_square_equation.discriminant(2,-4,2), 0)
    def test_discriminant_less(self):
        self.assertEqual(solv_square_equation.discriminant(1,2,3), -8)


    #test Roots
    def test_roots_two(self):
        self.assertEqual(solv_square_equation.roots(16, -3,-2,1), (-1, 0.3333333333333333))
    def test_roots_one(self):
        self.assertEqual(solv_square_equation.roots(0, 2,-4,2), 1)
    def test_roots_none(self):
        self.assertEqual(solv_square_equation.roots(-8, 1,2,3), "No roots")
    

    #test solv_square
    def test_solv_square_two(self):
        self.assertEqual(solv_square_equation.solv_square(-3,-2,1), (-1, 0.3333333333333333))
    def test_solv_square_one(self):
        self.assertEqual(solv_square_equation.solv_square(2,-4,2), 1)
    def test_solv_square_none(self):
        self.assertEqual(solv_square_equation.solv_square(1,2,3), "No roots")
    

if __name__ == '__main__':
    unittest.main()