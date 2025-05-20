
package Paws::LookoutEquipment::ListLabelGroups;
  use Moose;
  has LabelGroupNameBeginsWith => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLabelGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListLabelGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListLabelGroups - Arguments for method ListLabelGroups on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLabelGroups on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListLabelGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLabelGroups.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListLabelGroupsResponse = $lookoutequipment->ListLabelGroups(
      LabelGroupNameBeginsWith => 'MyLabelGroupName',    # OPTIONAL
      MaxResults               => 1,                     # OPTIONAL
      NextToken                => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $LabelGroupSummaries = $ListLabelGroupsResponse->LabelGroupSummaries;
    my $NextToken           = $ListLabelGroupsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListLabelGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListLabelGroups>

=head1 ATTRIBUTES


=head2 LabelGroupNameBeginsWith => Str

The beginning of the name of the label groups to be listed.



=head2 MaxResults => Int

Specifies the maximum number of label groups to list.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
label groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLabelGroups in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

