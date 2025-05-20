
package Paws::Macie2::GetClassificationScope;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetClassificationScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/classification-scopes/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetClassificationScopeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetClassificationScope - Arguments for method GetClassificationScope on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetClassificationScope on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetClassificationScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetClassificationScope.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetClassificationScopeResponse = $macie2->GetClassificationScope(
      Id => 'My__string',

    );

    # Results:
    my $Id   = $GetClassificationScopeResponse->Id;
    my $Name = $GetClassificationScopeResponse->Name;
    my $S3   = $GetClassificationScopeResponse->S3;

    # Returns a L<Paws::Macie2::GetClassificationScopeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetClassificationScope>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource that the request
applies to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetClassificationScope in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

