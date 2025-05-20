
package Paws::Support::DescribeSupportedLanguages;
  use Moose;
  has CategoryCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'categoryCode' , required => 1);
  has IssueType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'issueType' , required => 1);
  has ServiceCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceCode' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSupportedLanguages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeSupportedLanguagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeSupportedLanguages - Arguments for method DescribeSupportedLanguages on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSupportedLanguages on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeSupportedLanguages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSupportedLanguages.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeSupportedLanguagesResponse =
      $support->DescribeSupportedLanguages(
      CategoryCode => 'MyValidatedCategoryCode',
      IssueType    => 'MyValidatedIssueTypeString',
      ServiceCode  => 'MyValidatedServiceCode',

      );

    # Results:
    my $SupportedLanguages =
      $DescribeSupportedLanguagesResponse->SupportedLanguages;

    # Returns a L<Paws::Support::DescribeSupportedLanguagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeSupportedLanguages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CategoryCode => Str

The category of problem for the support case. You also use the
DescribeServices operation to get the category code for a service. Each
Amazon Web Services service defines its own set of category codes.



=head2 B<REQUIRED> IssueType => Str

The type of issue for the case. You can specify C<customer-service> or
C<technical>.



=head2 B<REQUIRED> ServiceCode => Str

The code for the Amazon Web Services service. You can use the
DescribeServices operation to get the possible C<serviceCode> values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSupportedLanguages in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

