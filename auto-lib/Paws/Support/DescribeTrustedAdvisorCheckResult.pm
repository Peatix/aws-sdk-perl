
package Paws::Support::DescribeTrustedAdvisorCheckResult;
  use Moose;
  has CheckId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checkId' , required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorCheckResultResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckResult - Arguments for method DescribeTrustedAdvisorCheckResult on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustedAdvisorCheckResult on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeTrustedAdvisorCheckResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustedAdvisorCheckResult.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeTrustedAdvisorCheckResultResponse =
      $support->DescribeTrustedAdvisorCheckResult(
      CheckId  => 'MyString',
      Language => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Result = $DescribeTrustedAdvisorCheckResultResponse->Result;

 # Returns a L<Paws::Support::DescribeTrustedAdvisorCheckResultResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeTrustedAdvisorCheckResult>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckId => Str

The unique identifier for the Trusted Advisor check.



=head2 Language => Str

The ISO 639-1 code for the language that you want your check results to
appear in.

The Amazon Web Services Support API currently supports the following
languages for Trusted Advisor:

=over

=item *

Chinese, Simplified - C<zh>

=item *

Chinese, Traditional - C<zh_TW>

=item *

English - C<en>

=item *

French - C<fr>

=item *

German - C<de>

=item *

Indonesian - C<id>

=item *

Italian - C<it>

=item *

Japanese - C<ja>

=item *

Korean - C<ko>

=item *

Portuguese, Brazilian - C<pt_BR>

=item *

Spanish - C<es>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustedAdvisorCheckResult in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

