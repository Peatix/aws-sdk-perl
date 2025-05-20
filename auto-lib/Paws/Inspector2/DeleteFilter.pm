
package Paws::Inspector2::DeleteFilter;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/filters/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::DeleteFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::DeleteFilter - Arguments for method DeleteFilter on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFilter on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method DeleteFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFilter.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $DeleteFilterResponse = $inspector2->DeleteFilter(
      Arn => 'MyFilterArn',

    );

    # Results:
    my $Arn = $DeleteFilterResponse->Arn;

    # Returns a L<Paws::Inspector2::DeleteFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/DeleteFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Number (ARN) of the filter to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFilter in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

