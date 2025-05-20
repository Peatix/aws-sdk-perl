
package Paws::ApplicationInsights::UpdateProblem;
  use Moose;
  has ProblemId => (is => 'ro', isa => 'Str', required => 1);
  has UpdateStatus => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProblem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::UpdateProblemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateProblem - Arguments for method UpdateProblem on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProblem on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method UpdateProblem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProblem.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $UpdateProblemResponse = $applicationinsights->UpdateProblem(
      ProblemId    => 'MyProblemId',
      UpdateStatus => 'RESOLVED',      # OPTIONAL
      Visibility   => 'IGNORED',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/UpdateProblem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProblemId => Str

The ID of the problem.



=head2 UpdateStatus => Str

The status of the problem. Arguments can be passed for only problems
that show a status of C<RECOVERING>.

Valid values are: C<"RESOLVED">

=head2 Visibility => Str

The visibility of a problem. When you pass a value of C<IGNORED>, the
problem is removed from the default view, and all notifications for the
problem are suspended. When C<VISIBLE> is passed, the C<IGNORED> action
is reversed.

Valid values are: C<"IGNORED">, C<"VISIBLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProblem in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

