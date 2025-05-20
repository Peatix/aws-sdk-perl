
package Paws::LookoutEquipment::ListRetrainingSchedulers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelNameBeginsWith => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRetrainingSchedulers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListRetrainingSchedulersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListRetrainingSchedulers - Arguments for method ListRetrainingSchedulers on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRetrainingSchedulers on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListRetrainingSchedulers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRetrainingSchedulers.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListRetrainingSchedulersResponse =
      $lookoutequipment->ListRetrainingSchedulers(
      MaxResults          => 1,                # OPTIONAL
      ModelNameBeginsWith => 'MyModelName',    # OPTIONAL
      NextToken           => 'MyNextToken',    # OPTIONAL
      Status              => 'PENDING',        # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRetrainingSchedulersResponse->NextToken;
    my $RetrainingSchedulerSummaries =
      $ListRetrainingSchedulersResponse->RetrainingSchedulerSummaries;

 # Returns a L<Paws::LookoutEquipment::ListRetrainingSchedulersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListRetrainingSchedulers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of retraining schedulers to list.



=head2 ModelNameBeginsWith => Str

Specify this field to only list retraining schedulers whose machine
learning models begin with the value you specify.



=head2 NextToken => Str

If the number of results exceeds the maximum, a pagination token is
returned. Use the token in the request to show the next page of
retraining schedulers.



=head2 Status => Str

Specify this field to only list retraining schedulers whose status
matches the value you specify.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRetrainingSchedulers in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

