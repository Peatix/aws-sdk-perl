
package Paws::Macie2::GetAllowList;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAllowList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/allow-lists/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetAllowListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetAllowList - Arguments for method GetAllowList on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAllowList on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetAllowList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAllowList.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetAllowListResponse = $macie2->GetAllowList(
      Id => 'My__string',

    );

    # Results:
    my $Arn         = $GetAllowListResponse->Arn;
    my $CreatedAt   = $GetAllowListResponse->CreatedAt;
    my $Criteria    = $GetAllowListResponse->Criteria;
    my $Description = $GetAllowListResponse->Description;
    my $Id          = $GetAllowListResponse->Id;
    my $Name        = $GetAllowListResponse->Name;
    my $Status      = $GetAllowListResponse->Status;
    my $Tags        = $GetAllowListResponse->Tags;
    my $UpdatedAt   = $GetAllowListResponse->UpdatedAt;

    # Returns a L<Paws::Macie2::GetAllowListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetAllowList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource that the request
applies to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAllowList in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

