
package Paws::SSMContacts::ListPageResolutions;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPageResolutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListPageResolutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPageResolutions - Arguments for method ListPageResolutions on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPageResolutions on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListPageResolutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPageResolutions.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListPageResolutionsResult = $ssm -contacts->ListPageResolutions(
      PageId    => 'MySsmContactsArn',
      NextToken => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListPageResolutionsResult->NextToken;
    my $PageResolutions = $ListPageResolutionsResult->PageResolutions;

    # Returns a L<Paws::SSMContacts::ListPageResolutionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListPageResolutions>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 B<REQUIRED> PageId => Str

The Amazon Resource Name (ARN) of the contact engaged for the incident.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPageResolutions in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

